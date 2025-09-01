from typing import List
from fastapi import FastAPI, Depends, Query, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from sqlmodel import Session, select, func
from models import Repository, RepositoryResponse, RepositorySubmissionRequest, RepositorySubmissionResponse
from database import get_session
import httpx
import os
import json
import uuid
import base64
from datetime import datetime
from urllib.parse import urlparse
import jwt  # PyJWT
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.backends import default_backend
import time
import requests  # For dispatch event
 
app = FastAPI()

# Configure CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # In production, replace with specific origins
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/languages", response_model=List[str])
def get_languages(session: Session = Depends(get_session)):
    """
    ### Get Languages
    Returns a sorted list of unique programming languages found in the repositories.
    
    **Returns:**
        - `List[str]`: List of unique languages.
    """
    result = session.exec(select(Repository.language).where(Repository.language.isnot(None), Repository.approved == True).distinct())
    return sorted([lang for lang in result if lang])

@app.get("/licenses", response_model=List[str])
def get_licenses(session: Session = Depends(get_session)):
    """
    ### Get Licenses
    Returns a sorted list of unique licenses from the repositories.
    
    **Returns:**
        - `List[str]`: List of unique licenses.
    """
    result = session.exec(select(Repository.license).where(Repository.license.isnot(None), Repository.approved == True).distinct())
    return sorted([lic for lic in result if lic])

@app.get("/universities", response_model=List[str])
def get_universities(session: Session = Depends(get_session)):
    """
    ### Get Universities
    Returns a sorted list of unique universities from the repositories.
    
    **Returns:**
        - `List[str]`: List of unique universities.
    """
    result = session.exec(select(Repository.university).where(Repository.university.isnot(None), Repository.approved == True).distinct())
    return sorted([uni for uni in result if uni])

@app.get("/topics", response_model=List[str])
def get_topics(session: Session = Depends(get_session)):
    """
    ### Get Topics
    Returns a sorted list of unique topic_area_ai values from the repositories.
    
    **Returns:**
        - `List[str]`: List of unique topic_area_ai values.
    """
    result = session.exec(select(Repository.topic_area_ai).where(Repository.topic_area_ai.isnot(None), Repository.approved == True).distinct())
    return sorted([topic for topic in result if topic])

@app.get("/repositories", response_model=List[RepositoryResponse])
def list_repositories(
    q: str = Query(None, description="Search term for name/description"),
    university: List[str] = Query(None, description="University filter"),
    language: List[str] = Query(None, description="Language filter"),
    license: List[str] = Query(None, description="License filter"),
    owner: List[str] = Query(None, description="Organization/Owner filter"),
    readme: List[str] = Query(None, description="Readme"),
    default_branch: List[str] = Query(None, description="Default branch"),
    topic_area_ai: List[str] = Query(None, description="Topic Area AI filter"),
    sort: str = Query("stargazers_count", description="Sort by field: stargazers_count, forks_count, created_at"),
    order: str = Query("desc", description="Sort order: asc or desc"),
    limit: int = Query(None, ge=1, le=100, description="Number of results to return"),
    offset: int = Query(None, ge=0, description="Number of results to skip"),
    session: Session = Depends(get_session)
):
    """
    ### List Repositories
    Retrieves a list of repositories with optional filters and sorting.

    **Parameters:**

    - `q` (str, optional): Search term for repository name or description.
    - `university` (List[str], optional): Filter by university.
    - `language` (List[str], optional): Filter by programming language.
    - `license` (List[str], optional): Filter by license.
    - `owner` (List[str], optional): Filter by organization/owner.
    - `sort` (str, default="stargazers_count"): Field to sort by.
    - `order` (str, default="desc"): Sort order ('asc' or 'desc').
    - `limit` (int, optional): Number of results to return (1-100).
    - `offset` (int, optional): Number of results to skip.
    - `readme` (List[str], optional): readme of repo.

    **Returns:**

    - `List[RepositoryResponse]`: List of repositories matching the filters.
    """
    statement = select(Repository).where(Repository.approved == True)
    sort_map = {
        "stargazers_count": Repository.stargazers_count,
        "forks_count": Repository.forks_count,
        "created_at": Repository.created_at,
    }
    sort_field = sort_map.get(sort, Repository.stargazers_count)
    if order == "asc":
        statement = statement.order_by(sort_field.asc())
    else:
        statement = statement.order_by(sort_field.desc())
    if q:
        search = f"%{q.lower()}%"
        statement = statement.where(
            (Repository.full_name.ilike(search)) | (Repository.description.ilike(search))
        )
    if university:
        statement = statement.where(Repository.university.in_(university))
    if language:
        statement = statement.where(Repository.language.in_(language))
    if license:
        statement = statement.where(Repository.license.in_(license))
    if owner:
        statement = statement.where(Repository.owner.in_(owner))
    if readme:
        statement = statement.where(Repository.readme.in_(readme))
    if default_branch:
        statement = statement.where(Repository.default_branch.in_(default_branch))
    if topic_area_ai:
        statement = statement.where(Repository.topic_area_ai.in_(topic_area_ai))
    if limit:
        statement = statement.limit(limit)
    if offset:
        statement = statement.offset(offset)
    res = session.exec(statement)
    results = res.all()
    response = []
    for repo in results:
        repo_dict = repo.dict()
        # Overwrite description with short_description
        repo_dict["description"] = repo_dict.get("short_description")
        repo_dict.pop("short_description", None)
        # Convert datetime fields to ISO string for Pydantic
        for dt_field in ["created_at", "updated_at", "pushed_at"]:
            if dt_field in repo_dict and hasattr(repo_dict[dt_field], "isoformat"):
                repo_dict[dt_field] = repo_dict[dt_field].isoformat()
        response.append(RepositoryResponse(**repo_dict))
    return response

@app.get("/repositories/{owner}/{repo}", response_model=RepositoryResponse)
def get_repository(owner: str, repo: str, session: Session = Depends(get_session)):
    """
    ### Get Repository by Owner and Repo Name
    Retrieves a repository by its owner and repository name.
    
    **Parameters:**
        - `owner` (str): The repository owner/organization name.
        - `repo` (str): The repository name.
    
    **Returns:**
        - `RepositoryResponse`: Repository details if found.
    
    **Raises:**
        - `HTTPException 404`: If the repository is not found.
    """
    full_name = f"{owner}/{repo}"
    statement = select(Repository).where(Repository.full_name == full_name, Repository.approved == True)
    res = session.exec(statement)
    repository = res.first()
    if not repository:
        raise HTTPException(status_code=404, detail="Repository not found")
    repo_dict = repository.dict()
    # Overwrite description with short_description
    repo_dict["description"] = repo_dict.get("short_description")
    repo_dict.pop("short_description", None)
    # Convert datetime fields to ISO string for Pydantic
    for dt_field in ["created_at", "updated_at", "pushed_at"]:
        if dt_field in repo_dict and hasattr(repo_dict[dt_field], "isoformat"):
            repo_dict[dt_field] = repo_dict[dt_field].isoformat()
    return RepositoryResponse(**repo_dict)


@app.get("/organizations", response_model=List[str])
def get_organizations(session: Session = Depends(get_session)):
    """
    ### Get Organizations
    Returns a sorted list of unique organization/owner names where the repository is marked as an organization.
    
    **Returns:**
        - `List[str]`: List of unique organization/owner names.
    """
    result = session.exec(
        select(Repository.owner)
        .where(Repository.owner.isnot(None))
        .where(Repository.organization == '1')
        .where(Repository.approved == True)
        .distinct()
    )
    return sorted([owner for owner in result if owner])


def trigger_repository_dispatch(repo_owner, repo_name, github_token, pr_number, branch_name):
    url = f"https://api.github.com/repos/{repo_owner}/{repo_name}/dispatches"
    headers = {
        "Authorization": f"token {github_token}",
        "Accept": "application/vnd.github+json"
    }
    data = {
        "event_type": "run-bot-checks",
        "client_payload": {
            "pr_number": pr_number,
            "branch": branch_name
        }
    }
    response = requests.post(url, headers=headers, json=data)
    print("Dispatch status:", response.status_code, response.text)
    return response.status_code == 204


@app.post("/submit-repository", response_model=RepositorySubmissionResponse)
async def submit_repository(submission: RepositorySubmissionRequest):
    """
    ### Submit Repository
    Submit a new repository for review via GitHub PR workflow.
    
    **Parameters:**
        - `submission` (RepositorySubmissionRequest): Repository submission details
    
    **Returns:**
        - `RepositorySubmissionResponse`: Confirmation with PR URL and submission ID
    
    **Raises:**
        - `HTTPException 400`: If submission data is invalid
        - `HTTPException 409`: If repository already exists
    """
    try:
        # Basic validation - GitHub URL format
        if not submission.repository_url.startswith(('https://github.com/', 'http://github.com/')):
            raise HTTPException(status_code=400, detail="Only GitHub repositories are currently supported")
        
        # Extract owner/repo from URL for validation
        parsed_url = urlparse(submission.repository_url.rstrip('/'))
        path_parts = parsed_url.path.strip('/').split('/')
        
        if len(path_parts) < 2:
            raise HTTPException(status_code=400, detail="Invalid GitHub repository URL format")
        
        owner = path_parts[0]
        repo_name = path_parts[1]
        repo_full_name = f"{owner}/{repo_name}"
        
        # Check if repository already exists in approved list
        if await check_repository_exists(submission.repository_url):
            raise HTTPException(
                status_code=409, 
                detail="Repository already exists in the catalog or is pending review"
            )
        
        # Generate unique submission ID
        submission_id = str(uuid.uuid4())
        
        # Create GitHub PR with submission data
        pr_url = await create_github_pr(submission, submission_id, repo_full_name)

        # After PR creation, trigger repository_dispatch event
        # Extract PR number and branch name from the PR URL or response
        # (You may want to return these from create_github_pr for more robust handling)
        # For now, fetch the latest PR for this branch
        github_token = await get_github_app_installation_token()
        repo_owner = os.getenv("GITHUB_REPO_OWNER", "UC-OSPO-Network")
        repo_name = os.getenv("GITHUB_REPO_NAME", "orb-showcase")
        branch_name = None
        pr_number = None
        if pr_url:
            # Fetch PR info to get number and branch
            api_url = pr_url.replace("https://github.com/", "https://api.github.com/repos/").replace("/pull/", "/pulls/")
            headers = {"Authorization": f"token {github_token}", "Accept": "application/vnd.github+json"}
            resp = requests.get(api_url, headers=headers)
            if resp.status_code == 200:
                pr_data = resp.json()
                pr_number = pr_data["number"]
                branch_name = pr_data["head"]["ref"]
        if pr_number and branch_name:
            trigger_repository_dispatch(repo_owner, repo_name, github_token, pr_number, branch_name)

        return RepositorySubmissionResponse(
            message="Repository submission received! A pull request has been created for review.",
            pr_url=pr_url,
            submission_id=submission_id,
            status="pending"
        )
        
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Failed to submit repository: {str(e)}")


async def check_repository_exists(repository_url: str) -> bool:
    """
    Check if repository already exists in approved list or pending submissions.
    This will check the JSON file that contains approved repositories.
    """
    try:
        # Check approved repositories list
        approved_file_path = "data/approved-repositories.json"
        if os.path.exists(approved_file_path):
            with open(approved_file_path, 'r') as f:
                approved_repos = json.load(f)
                if repository_url in approved_repos or any(repo.get('url') == repository_url for repo in approved_repos if isinstance(repo, dict)):
                    return True
        
        # Check pending submissions
        pending_dir = "data/submissions/pending"
        if os.path.exists(pending_dir):
            for filename in os.listdir(pending_dir):
                if filename.endswith('.json'):
                    with open(os.path.join(pending_dir, filename), 'r') as f:
                        pending_submission = json.load(f)
                        if pending_submission.get('repository_url') == repository_url:
                            return True
        
        return False
    except Exception as e:
        print(f"Error checking repository existence: {e}")
        return False


# Helper to get GitHub App installation token
async def get_github_app_installation_token():
    app_id = os.getenv("GITHUB_APP_ID")
    installation_id = os.getenv("GITHUB_INSTALLATION_ID")
    private_key_path = os.getenv("GITHUB_APP_PRIVATE_KEY_PATH")
    if not (app_id and installation_id and private_key_path):
        raise Exception("GitHub App ID, Installation ID, or Private Key Path not set in environment variables.")

    with open(private_key_path, "rb") as key_file:
        private_key = serialization.load_pem_private_key(
            key_file.read(),
            password=None,
            backend=default_backend()
        )
    now = int(time.time())
    payload = {
        "iat": now - 60,
        "exp": now + (10 * 60),
        "iss": app_id
    }
    jwt_token = jwt.encode(payload, private_key, algorithm="RS256")
    headers = {
        "Authorization": f"Bearer {jwt_token}",
        "Accept": "application/vnd.github+json"
    }
    # Get installation access token
    url = f"https://api.github.com/app/installations/{installation_id}/access_tokens"
    async with httpx.AsyncClient() as client:
        response = await client.post(url, headers=headers)
        response.raise_for_status()
        return response.json()["token"]


async def create_github_pr(submission: RepositorySubmissionRequest, submission_id: str, repo_full_name: str) -> str | None:
    """
    Create a GitHub PR with the repository submission data using GitHub App authentication.
    """
    try:
        # Create submission data structure
        submission_data = {
            "submission_id": submission_id,
            "submitted_at": datetime.utcnow().isoformat(),
            "status": "pending",
            "repository_url": submission.repository_url,
            "repo_full_name": repo_full_name,
            "submitter_name": submission.submitter_name,
            "submitter_email": submission.submitter_email,
            "short_description": submission.short_description,
            "topic_area_ai": submission.topic_area_ai,
            "university": submission.university,
            "contact_name2": submission.contact_name2,
            "contact_email2": submission.contact_email2,
            "contact_name3": submission.contact_name3,
            "contact_email3": submission.contact_email3,
            "funder1": submission.funder1,
            "grant_number1_1": submission.grant_number1_1,
            "grant_number1_2": submission.grant_number1_2,
            "grant_number1_3": submission.grant_number1_3,
            "funder2": submission.funder2,
            "grant_number2_1": submission.grant_number2_1,
            "grant_number2_2": submission.grant_number2_2,
            "grant_number2_3": submission.grant_number2_3,
        }

        # Get GitHub App installation token
        github_token = await get_github_app_installation_token()
        repo_owner = os.getenv("GITHUB_REPO_OWNER", "UC-OSPO-Network")
        repo_name = os.getenv("GITHUB_REPO_NAME", "orb-showcase")

        # Create GitHub PR with submission data
        return await create_actual_github_pr(
            submission_data, submission_id, repo_owner, repo_name, github_token
        )
    except Exception as e:
        print(f"GitHub PR creation error: {e}")
        return None


async def create_actual_github_pr(
    submission_data: dict, 
    submission_id: str, 
    repo_owner: str, 
    repo_name: str, 
    github_token: str
) -> str | None:
    """
    Create actual GitHub PR using GitHub API
    """
    try:
        headers = {
            "Authorization": f"token {github_token}",
            "Accept": "application/vnd.github.v3+json",
            "User-Agent": "UC-ORB-Showcase-Bot"
        }
        
        base_url = f"https://api.github.com/repos/{repo_owner}/{repo_name}"
        
        # Create branch name
        timestamp = datetime.utcnow().strftime('%Y%m%d_%H%M%S')
        branch_name = f"add-repo-{submission_data['repo_full_name'].replace('/', '-')}-{timestamp}"
        
        async with httpx.AsyncClient() as client:
            # 1. Get the default branch SHA
            # First get repository info to find the default branch
            repo_info_response = await client.get(f"{base_url}", headers=headers)
            if repo_info_response.status_code != 200:
                print(f"Failed to get repository info: {repo_info_response.text}")
                return None
            
            default_branch = repo_info_response.json().get("default_branch", "main")
            
            main_branch_response = await client.get(
                f"{base_url}/git/refs/heads/{default_branch}",
                headers=headers
            )
            
            if main_branch_response.status_code != 200:
                print(f"Failed to get main branch: {main_branch_response.text}")
                return None
            
            main_sha = main_branch_response.json()["object"]["sha"]
            
            # 2. Create new branch
            create_branch_response = await client.post(
                f"{base_url}/git/refs",
                headers=headers,
                json={
                    "ref": f"refs/heads/{branch_name}",
                    "sha": main_sha
                }
            )
            
            if create_branch_response.status_code != 201:
                print(f"Failed to create branch: {create_branch_response.text}")
                return None
            
            # 3. Create submission file content
            filename = f"{timestamp}_{submission_id[:8]}.json"
            file_path = f"data/submissions/pending/{filename}"
            file_content = json.dumps(submission_data, indent=2)
            
            # 4. Create/update file in the new branch
            create_file_response = await client.put(
                f"{base_url}/contents/{file_path}",
                headers=headers,
                json={
                    "message": f"Add repository submission: {submission_data['repo_full_name']}",
                    "content": base64.b64encode(file_content.encode()).decode(),
                    "branch": branch_name
                }
            )
            
            if create_file_response.status_code not in [200, 201]:
                print(f"Failed to create file: {create_file_response.text}")
                return None
            
            # 5. Create pull request
            pr_title = f"Add repository: {submission_data['repo_full_name']}"
            pr_body = create_pr_description(submission_data)
            
            create_pr_response = await client.post(
                f"{base_url}/pulls",
                headers=headers,
                json={
                    "title": pr_title,
                    "head": branch_name,
                    "base": default_branch,
                    "body": pr_body
                }
            )
            
            if create_pr_response.status_code != 201:
                print(f"Failed to create PR: {create_pr_response.text}")
                return None
            
            pr_data = create_pr_response.json()
            pr_url = pr_data["html_url"]
            
            # 6. Add labels to PR
            await client.post(
                f"{base_url}/issues/{pr_data['number']}/labels",
                headers=headers,
                json=["repository-submission", "needs-review"]
            )
            
            print(f"Successfully created PR: {pr_url}")
            return pr_url
            
    except Exception as e:
        print(f"Error creating GitHub PR: {e}")
        return None


def create_pr_description(submission_data: dict) -> str:
    """
    Create a formatted PR description from submission data
    """
    description = f"""# Repository Submission

## Repository Information
- **Repository URL**: {submission_data['repository_url']}
- **Repository Name**: {submission_data['repo_full_name']}
- **Topic Area**: {submission_data['topic_area_ai']}
- **Description**: {submission_data['short_description']}

## Submitter Information
- **Name**: {submission_data['submitter_name']}
- **Email**: {submission_data['submitter_email']}
"""

    if submission_data.get('university'):
        description += f"- **University**: {submission_data['university']}\n"

    # Additional contacts
    if submission_data.get('contact_name2'):
        description += f"\n## Additional Contacts\n"
        description += f"- **Contact 2**: {submission_data['contact_name2']} ({submission_data.get('contact_email2', 'N/A')})\n"
    
    if submission_data.get('contact_name3'):
        if not submission_data.get('contact_name2'):
            description += f"\n## Additional Contacts\n"
        description += f"- **Contact 3**: {submission_data['contact_name3']} ({submission_data.get('contact_email3', 'N/A')})\n"

    # Funding information
    funding_info = []
    if submission_data.get('funder1'):
        grants = [g for g in [
            submission_data.get('grant_number1_1'),
            submission_data.get('grant_number1_2'),
            submission_data.get('grant_number1_3')
        ] if g]
        grant_text = f" (Grants: {', '.join(grants)})" if grants else ""
        funding_info.append(f"- **Primary Funder**: {submission_data['funder1']}{grant_text}")
    
    if submission_data.get('funder2'):
        grants = [g for g in [
            submission_data.get('grant_number2_1'),
            submission_data.get('grant_number2_2'),
            submission_data.get('grant_number2_3')
        ] if g]
        grant_text = f" (Grants: {', '.join(grants)})" if grants else ""
        funding_info.append(f"- **Secondary Funder**: {submission_data['funder2']}{grant_text}")
    
    if funding_info:
        description += f"\n## Funding Information\n" + "\n".join(funding_info) + "\n"

    description += f"""
## Submission Details
- **Submission ID**: {submission_data['submission_id']}
- **Submitted At**: {submission_data['submitted_at']}
- **Status**: {submission_data['status']}

## Review Checklist
- [ ] Repository exists and is accessible
- [ ] Repository is not a duplicate
- [ ] Repository has appropriate license
- [ ] Repository has README documentation
- [ ] Submission information is accurate
- [ ] Repository fits UC ORB Showcase criteria

## Next Steps
1. Review the repository and submission details
2. Verify the repository meets inclusion criteria
3. Approve or request changes
4. Merge this PR to add the repository to the showcase

---
*This PR was automatically created by the UC ORB Showcase submission system.*
"""
    
    return description


async def save_submission_locally(submission_data: dict, submission_id: str):
    """
    Save submission data locally in the pending directory.
    """
    try:
        # Ensure directories exist
        os.makedirs("data/submissions/pending", exist_ok=True)
        
        # Save submission file
        filename = f"{datetime.utcnow().strftime('%Y%m%d_%H%M%S')}_{submission_id[:8]}.json"
        filepath = os.path.join("data/submissions/pending", filename)
        
        with open(filepath, 'w') as f:
            json.dump(submission_data, f, indent=2)
            
        print(f"Submission saved: {filepath}")
        
    except Exception as e:
        print(f"Error saving submission locally: {e}")
        raise



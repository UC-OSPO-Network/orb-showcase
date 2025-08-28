from typing import List
from fastapi import FastAPI, Depends, Query
from fastapi.middleware.cors import CORSMiddleware
from sqlmodel import Session, select, func
from models import Repository, RepositoryResponse
from fastapi import HTTPException
from database import get_session
import httpx
 
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

        repo_dict['contributors'] = contributors_count

        response.append(RepositoryResponse(**repo_dict))
    return response

@app.get("/repositories/{id}", response_model=RepositoryResponse)
def get_repository(id: str, session: Session = Depends(get_session)):
    """
    ### Get Repository by ID
    Retrieves a repository by its unique ID.
    
    **Parameters:**
        - `id` (int): The unique identifier of the repository.
    
    **Returns:**
        - `RepositoryResponse`: Repository details if found.
    
    **Raises:**
        - `HTTPException 404`: If the repository is not found.
    """
    id = str(id)
    statement = select(Repository).where(Repository.id == id, Repository.approved == True)
    res = session.exec(statement)
    repo = res.first()
    if not repo:
        raise HTTPException(status_code=404, detail="Repository not found")
    repo_dict = repo.dict()


    # Overwrite description with short_description
    repo_dict["description"] = repo_dict.get("short_description")
    repo_dict.pop("short_description", None)
    # Convert datetime fields to ISO string for Pydantic
    for dt_field in ["created_at", "updated_at", "pushed_at"]:
        if dt_field in repo_dict and hasattr(repo_dict[dt_field], "isoformat"):
            repo_dict[dt_field] = repo_dict[dt_field].isoformat()

    repo_dict['contributors'] = contributors_count


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



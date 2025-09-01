#!/usr/bin/env python3
"""
Validate that the GitHub repository exists and is accessible
"""

import json
import sys
import os
import requests
from urllib.parse import urlparse

def validate_github_repository(file_path):
    """Validate GitHub repository exists and get metadata"""
    results = []
    
    try:
        # Load submission file
        with open(file_path) as f:
            submission = json.load(f)
        
        repo_url = submission.get('repository_url', '')
        
        if not repo_url:
            results.append(f"❌ {file_path}: No repository URL found in submission")
            return results
        
        # Parse GitHub URL
        parsed = urlparse(repo_url)
        if parsed.netloc != 'github.com':
            results.append(f"❌ {file_path}: Not a GitHub repository: {repo_url}")
            return results
        
        path_parts = parsed.path.strip('/').split('/')
        if len(path_parts) < 2:
            results.append(f"❌ {file_path}: Invalid GitHub repository URL: {repo_url}")
            return results
        
        owner = path_parts[0]
        repo = path_parts[1]
        
        # Check repository via GitHub API
        api_url = f"https://api.github.com/repos/{owner}/{repo}"
        headers = {}
        
        # Use GitHub token if available for higher rate limits
        github_token = os.getenv('GITHUB_TOKEN')
        if github_token:
            headers['Authorization'] = f'token {github_token}'
        
        response = requests.get(api_url, headers=headers, timeout=30)
        
        if response.status_code == 404:
            results.append(f"❌ {file_path}: Repository not found or not accessible: {repo_url}")
            return results
        elif response.status_code == 403:
            results.append(f"⚠️ {file_path}: Rate limited or private repository: {repo_url}")
            results.append(f"ℹ️ {file_path}: Skipping detailed validation due to rate limit")
            return results
        elif response.status_code != 200:
            results.append(f"⚠️ {file_path}: Could not verify repository (HTTP {response.status_code}): {repo_url}")
            results.append(f"ℹ️ {file_path}: Skipping detailed validation due to API error")
            return results
        
        # Only proceed if we got a successful response
        try:
            repo_data = response.json()
        except Exception as e:
            results.append(f"❌ {file_path}: Invalid JSON response from GitHub API: {e}")
            return results
        
        # Check if repository is public
        if repo_data.get('private', True):
            results.append(f"❌ {file_path}: Repository is private: {repo_url}")
            return results
        
        # Check if repository is archived
        if repo_data.get('archived', False):
            results.append(f"⚠️ {file_path}: Repository is archived: {repo_url}")
        
        # Check if repository is a fork (optional warning)
        if repo_data.get('fork', False):
            results.append(f"⚠️ {file_path}: Repository is a fork: {repo_url}")
        
        # Validate repository has description
        if not repo_data.get('description'):
            results.append(f"⚠️ {file_path}: Repository has no description")
        
        # Check for README
        try:
            readme_url = f"https://api.github.com/repos/{owner}/{repo}/readme"
            readme_response = requests.get(readme_url, headers=headers, timeout=10)
            if readme_response.status_code != 200:
                results.append(f"⚠️ {file_path}: Repository has no README file")
        except Exception:
            results.append(f"⚠️ {file_path}: Could not check README file")
        
        results.append(f"✅ {file_path}: Repository validated successfully")
        results.append(f"   - Stars: {repo_data.get('stargazers_count', 0)}")
        results.append(f"   - Language: {repo_data.get('language', 'Not specified')}")
        
        # Safely handle license data
        license_info = repo_data.get('license')
        if license_info and isinstance(license_info, dict):
            license_name = license_info.get('name', 'Not specified')
        else:
            license_name = 'Not specified'
        results.append(f"   - License: {license_name}")
        results.append(f"   - Last updated: {repo_data.get('updated_at', 'Unknown')}")
        
    except requests.RequestException as e:
        results.append(f"⚠️ {file_path}: Network error validating repository: {e}")
    except Exception as e:
        results.append(f"❌ {file_path}: Error validating repository: {e}")
    
    return results

def main():
    if len(sys.argv) < 2:
        print("Usage: validate_github_repo.py <file1> [file2] ...")
        sys.exit(1)
    
    files = sys.argv[1].split() if sys.argv[1] else []
    
    if not files:
        print("No submission files to validate")
        sys.exit(0)
    
    all_results = []
    has_errors = False
    
    for file_path in files:
        if file_path.strip():
            results = validate_github_repository(file_path.strip())
            all_results.extend(results)
            if any('❌' in result for result in results):
                has_errors = True
    
    # Append results to validation file
    with open('/tmp/validation_results.md', 'a') as f:
        f.write("\n### GitHub Repository Validation\n\n")
        for result in all_results:
            f.write(f"{result}\n")
    
    # Print results
    for result in all_results:
        print(result)
    
    if has_errors:
        sys.exit(1)

if __name__ == "__main__":
    main()
#!/usr/bin/env python3
"""
Update the approved repositories JSON list
"""

import json
import sys
import os
from pathlib import Path

def update_approved_list(file_path):
    """Add repository to approved list"""
    try:
        # Load submission file
        with open(file_path) as f:
            submission_data = json.load(f)
        
        repo_url = submission_data['repository_url']
        repo_full_name = submission_data['repo_full_name']
        
        # Load current approved list
        approved_file = Path("data/approved-repositories.json")
        if approved_file.exists():
            with open(approved_file) as f:
                approved_repos = json.load(f)
        else:
            approved_repos = []
        
        # Check if already in list
        repo_entry = {
            "url": repo_url,
            "full_name": repo_full_name
        }
        
        # Check for duplicates
        for existing_repo in approved_repos:
            if isinstance(existing_repo, dict):
                if existing_repo.get('url') == repo_url or existing_repo.get('full_name') == repo_full_name:
                    print(f"ℹ️ Repository already in approved list: {repo_url}")
                    return
            elif isinstance(existing_repo, str) and existing_repo == repo_url:
                print(f"ℹ️ Repository already in approved list: {repo_url}")
                return
        
        # Add to approved list
        approved_repos.append(repo_entry)
        
        # Sort by full_name for consistency
        approved_repos.sort(key=lambda x: x.get('full_name', '') if isinstance(x, dict) else str(x))
        
        # Write back to file
        with open(approved_file, 'w') as f:
            json.dump(approved_repos, f, indent=2)
        
        print(f"✅ Added to approved list: {repo_url}")
        
    except Exception as e:
        print(f"❌ Error updating approved list for {file_path}: {e}")
        raise

def main():
    if len(sys.argv) < 2:
        print("Usage: update_approved_list.py <file1> [file2] ...")
        sys.exit(1)
    
    files = sys.argv[1].split() if sys.argv[1] else []
    
    if not files:
        print("No submission files to process")
        sys.exit(0)
    
    for file_path in files:
        if file_path.strip():
            update_approved_list(file_path.strip())

if __name__ == "__main__":
    main()
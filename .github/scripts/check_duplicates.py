#!/usr/bin/env python3
"""
Check for duplicate repository submissions
"""

import json
import sys
import os
from pathlib import Path

def check_duplicates(file_path):
    """Check if repository is already approved or pending"""
    results = []
    
    try:
        # Load submission file
        with open(file_path) as f:
            submission = json.load(f)
        
        repo_url = submission.get('repository_url', '')
        repo_full_name = submission.get('repo_full_name', '')
        
        # Check against approved repositories
        approved_file = Path("data/approved-repositories.json")
        if approved_file.exists():
            with open(approved_file) as f:
                approved_repos = json.load(f)
            
            for repo in approved_repos:
                if isinstance(repo, dict):
                    if repo.get('url') == repo_url or repo.get('full_name') == repo_full_name:
                        results.append(f"❌ {file_path}: Repository already approved: {repo_url}")
                        return results
                elif isinstance(repo, str) and repo == repo_url:
                    results.append(f"❌ {file_path}: Repository already approved: {repo_url}")
                    return results
        
        # Check against other pending submissions
        pending_dir = Path("data/submissions/pending")
        if pending_dir.exists():
            current_file = Path(file_path).name
            for pending_file in pending_dir.glob("*.json"):
                if pending_file.name != current_file:
                    try:
                        with open(pending_file) as f:
                            pending_submission = json.load(f)
                        
                        if pending_submission.get('repository_url') == repo_url:
                            results.append(f"❌ {file_path}: Repository already pending review: {repo_url}")
                            return results
                    except Exception:
                        continue
        
        results.append(f"✅ {file_path}: No duplicates found for {repo_url}")
        
    except Exception as e:
        results.append(f"❌ {file_path}: Error checking duplicates: {e}")
    
    return results

def main():
    if len(sys.argv) < 2:
        print("Usage: check_duplicates.py <file1> [file2] ...")
        sys.exit(1)
    
    files = sys.argv[1].split() if sys.argv[1] else []
    
    if not files:
        print("No submission files to check")
        sys.exit(0)
    
    all_results = []
    has_errors = False
    
    for file_path in files:
        if file_path.strip():
            results = check_duplicates(file_path.strip())
            all_results.extend(results)
            if any('❌' in result for result in results):
                has_errors = True
    
    # Append results to validation file
    with open('/tmp/validation_results.md', 'a') as f:
        f.write("\n### Duplicate Check Results\n\n")
        for result in all_results:
            f.write(f"{result}\n")
    
    # Print results
    for result in all_results:
        print(result)
    
    if has_errors:
        sys.exit(1)

if __name__ == "__main__":
    main()
#!/usr/bin/env python3
"""
Process approved repository submission - add to database
"""

import json
import sys
import os
import requests
import psycopg2
from datetime import datetime
from urllib.parse import urlparse

def get_github_repo_data(repo_url, github_token=None):
    """Fetch repository data from GitHub API"""
    parsed = urlparse(repo_url)
    path_parts = parsed.path.strip('/').split('/')
    owner = path_parts[0]
    repo = path_parts[1]
    
    api_url = f"https://api.github.com/repos/{owner}/{repo}"
    headers = {'User-Agent': 'UC-ORB-Showcase-Bot'}
    
    if github_token:
        headers['Authorization'] = f'token {github_token}'
    
    response = requests.get(api_url, headers=headers, timeout=30)
    response.raise_for_status()
    
    return response.json()

def insert_repository_data(submission_data, repo_data, db_url):
    """Insert repository data into database"""
    conn = psycopg2.connect(db_url)
    cur = conn.cursor()
    
    try:
        repo_url = submission_data['repository_url']
        
        # Check if repository already exists in repositories table
        cur.execute("SELECT id FROM repositories WHERE html_url = %s", (repo_url,))
        existing_repo = cur.fetchone()
        
        if not existing_repo:
            # Insert into repositories table
            insert_repo_sql = """
                INSERT INTO repositories (
                    id, full_name, name, html_url, description, owner, language,
                    stargazers_count, forks_count, created_at, updated_at, pushed_at,
                    homepage, default_branch, license, organization, readme
                ) VALUES (
                    %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s
                )
            """
            
            cur.execute(insert_repo_sql, (
                str(repo_data.get('id', '')),
                repo_data.get('full_name', ''),
                repo_data.get('name', ''),
                repo_data.get('html_url', ''),
                repo_data.get('description', ''),
                repo_data.get('owner', {}).get('login', '') if isinstance(repo_data.get('owner'), dict) else str(repo_data.get('owner', '')),
                repo_data.get('language', ''),
                str(repo_data.get('stargazers_count', 0)),
                str(repo_data.get('forks_count', 0)),
                repo_data.get('created_at', ''),
                repo_data.get('updated_at', ''),
                repo_data.get('pushed_at', ''),
                repo_data.get('homepage', ''),
                repo_data.get('default_branch', ''),
                repo_data.get('license', {}).get('name', '') if repo_data.get('license') else '',
                '1' if repo_data.get('owner', {}).get('type') == 'Organization' else '0',
                ''  # README content would be fetched separately if needed
            ))
            print(f"✅ Inserted repository data for {repo_url}")
        else:
            print(f"ℹ️ Repository already exists in database: {repo_url}")
        
        # Check if already in showcase table
        cur.execute("SELECT html_url FROM showcase WHERE html_url = %s", (repo_url,))
        existing_showcase = cur.fetchone()
        
        if not existing_showcase:
            # Insert into showcase table
            insert_showcase_sql = """
                INSERT INTO showcase (
                    html_url, university, approved, candidate, contact_name, contact_email,
                    contact_name2, contact_email2, contact_name3, contact_email3,
                    short_description, topic_area_ai
                ) VALUES (
                    %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s
                )
            """
            
            cur.execute(insert_showcase_sql, (
                repo_url,
                submission_data.get('university'),
                True,  # approved = true
                True,  # candidate = true
                submission_data.get('submitter_name'),
                submission_data.get('submitter_email'),
                submission_data.get('contact_name2'),
                submission_data.get('contact_email2'),
                submission_data.get('contact_name3'),
                submission_data.get('contact_email3'),
                submission_data.get('short_description'),
                submission_data.get('topic_area_ai')
            ))
            print(f"✅ Added to showcase: {repo_url}")
        else:
            # Update existing showcase entry to approved
            cur.execute(
                "UPDATE showcase SET approved = true WHERE html_url = %s",
                (repo_url,)
            )
            print(f"✅ Updated showcase approval status: {repo_url}")
        
        # Handle funding information if provided
        if submission_data.get('funder1') or submission_data.get('funder2'):
            # This would require more complex logic to handle funders and repository_funding tables
            # For now, we'll skip this and handle it manually or in a future enhancement
            print(f"ℹ️ Funding information provided but not processed automatically")
        
        conn.commit()
        print(f"✅ Database operations completed successfully for {repo_url}")
        
    except Exception as e:
        conn.rollback()
        print(f"❌ Database error: {e}")
        raise
    finally:
        cur.close()
        conn.close()

def process_submission_file(file_path):
    """Process a single approved submission file"""
    try:
        with open(file_path) as f:
            submission_data = json.load(f)
        
        repo_url = submission_data['repository_url']
        print(f"Processing approved submission: {repo_url}")
        
        # Get GitHub repository data
        github_token = os.getenv('GITHUB_TOKEN')
        repo_data = get_github_repo_data(repo_url, github_token)
        
        # Insert into database
        db_url = os.getenv('POSTGRES_DB_URL')
        if not db_url:
            raise ValueError("POSTGRES_DB_URL environment variable not set")
        
        insert_repository_data(submission_data, repo_data, db_url)
        
        print(f"✅ Successfully processed: {repo_url}")
        
    except Exception as e:
        print(f"❌ Error processing {file_path}: {e}")
        raise

def main():
    if len(sys.argv) < 2:
        print("Usage: process_approval.py <file1> [file2] ...")
        sys.exit(1)
    
    files = sys.argv[1].split() if sys.argv[1] else []
    
    if not files:
        print("No submission files to process")
        sys.exit(0)
    
    for file_path in files:
        if file_path.strip():
            process_submission_file(file_path.strip())

if __name__ == "__main__":
    main()
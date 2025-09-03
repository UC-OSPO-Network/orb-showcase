#!/usr/bin/env python3
"""
Validate repository submission files against JSON schema
"""

import json
import sys
import os
import re
from pathlib import Path
import jsonschema

def validate_submission_file(file_path):
    """Validate a single submission file"""
    results = []
    
    try:
        # Load schema
        schema_path = Path("data/schema/submission-schema.json")
        if not schema_path.exists():
            results.append(f"❌ Schema file not found: {schema_path}")
            return results
            
        with open(schema_path) as f:
            schema = json.load(f)
        
        # Load submission file
        if not os.path.exists(file_path):
            results.append(f"❌ Submission file not found: {file_path}")
            return results
            
        with open(file_path) as f:
            submission = json.load(f)
        
        # Validate against schema
        jsonschema.validate(submission, schema)
        results.append(f"✅ {file_path}: Valid JSON structure")
        
        # Additional validation checks
        repo_url = submission.get('repository_url', '')
        if not repo_url.startswith('https://github.com/'):
            results.append(f"❌ {file_path}: Invalid GitHub URL format")
        
        # Check required fields have meaningful values
        required_fields = ['submitter_name', 'submitter_email', 'short_description', 'topic_area_ai']
        for field in required_fields:
            value = submission.get(field, '').strip()
            if not value:
                results.append(f"❌ {file_path}: Missing or empty required field: {field}")
        
        # Validate email format
        email = submission.get('submitter_email', '')
        if email and not re.match(r'^[^@]+@[^@]+\.[^@]+$', email):
            results.append(f"❌ {file_path}: Invalid email format: {email}")
            
        results.append(f"✅ {file_path}: All validation checks passed")
        
    except jsonschema.ValidationError as e:
        results.append(f"❌ {file_path}: JSON schema validation failed: {e.message}")
    except json.JSONDecodeError as e:
        results.append(f"❌ {file_path}: Invalid JSON format: {e}")
    except Exception as e:
        results.append(f"❌ {file_path}: Validation error: {e}")
    
    return results

def main():
    if len(sys.argv) < 2:
        print("Usage: validate_submission.py <file1> [file2] ...")
        sys.exit(1)
    
    files = sys.argv[1].split() if sys.argv[1] else []
    
    if not files:
        print("No submission files to validate")
        sys.exit(0)
    
    all_results = []
    has_errors = False
    
    for file_path in files:
        if file_path.strip():
            results = validate_submission_file(file_path.strip())
            all_results.extend(results)
            if any('❌' in result for result in results):
                has_errors = True
    
    # Write results to file for GitHub comment
    with open('/tmp/validation_results.md', 'w') as f:
        if has_errors:
            f.write("❌ **Validation Failed**\n\n")
        else:
            f.write("✅ **Validation Passed**\n\n")
        
        for result in all_results:
            f.write(f"{result}\n")
        
        if has_errors:
            f.write("\n**Please fix the issues above and update your PR.**\n")
        else:
            f.write("\n**Ready for maintainer review!**\n")
    
    # Print results
    for result in all_results:
        print(result)
    
    if has_errors:
        sys.exit(1)

if __name__ == "__main__":
    main()
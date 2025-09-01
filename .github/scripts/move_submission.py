#!/usr/bin/env python3
"""
Move submission files between directories (pending -> approved/rejected)
"""

import json
import sys
import os
import shutil
from pathlib import Path

def move_submission_file(file_path, destination):
    """Move submission file to appropriate directory"""
    try:
        source_path = Path(file_path)
        
        if not source_path.exists():
            print(f"⚠️ Source file not found: {file_path}")
            return
        
        # Determine destination directory
        if destination == "approved":
            dest_dir = Path("data/submissions/approved")
        elif destination == "rejected":
            dest_dir = Path("data/submissions/rejected")
        else:
            raise ValueError(f"Invalid destination: {destination}")
        
        # Create destination directory if it doesn't exist
        dest_dir.mkdir(parents=True, exist_ok=True)
        
        # Move file
        dest_path = dest_dir / source_path.name
        shutil.move(str(source_path), str(dest_path))
        
        print(f"✅ Moved {source_path.name} to {destination}")
        
        # Update status in the moved file
        try:
            with open(dest_path) as f:
                submission_data = json.load(f)
            
            submission_data['status'] = destination
            submission_data['processed_at'] = str(datetime.now(timezone.utc).isoformat())
            
            with open(dest_path, 'w') as f:
                json.dump(submission_data, f, indent=2)
            
            print(f"✅ Updated status to {destination}")
            
        except Exception as e:
            print(f"⚠️ Could not update status in file: {e}")
        
    except Exception as e:
        print(f"❌ Error moving {file_path}: {e}")
        raise

def main():
    if len(sys.argv) < 3:
        print("Usage: move_submission.py <files> <destination>")
        print("destination: 'approved' or 'rejected'")
        sys.exit(1)
    
    files = sys.argv[1].split() if sys.argv[1] else []
    destination = sys.argv[2]
    
    if not files:
        print("No submission files to move")
        sys.exit(0)
    
    if destination not in ['approved', 'rejected']:
        print("Invalid destination. Use 'approved' or 'rejected'")
        sys.exit(1)
    
    for file_path in files:
        if file_path.strip():
            move_submission_file(file_path.strip(), destination)

if __name__ == "__main__":
    from datetime import datetime, timezone
    main()
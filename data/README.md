# UC ORB Showcase Data Structure

This directory contains the data files and structure for the GitHub-first repository submission workflow.

## Directory Structure

```
data/
├── approved-repositories.json          # List of approved repositories
├── submissions/
│   ├── pending/                        # Pending submissions awaiting review
│   ├── approved/                       # Approved submissions (archived)
│   └── rejected/                       # Rejected submissions (archived)
├── schema/
│   └── submission-schema.json          # JSON schema for validating submissions
└── README.md                          # This file
```

## Files Description

### `approved-repositories.json`
Contains the list of all repositories that have been approved and are currently displayed in the UC ORB Showcase. This file is automatically updated by the GitHub bot when a submission is approved.

**Structure:**
```json
[
  {
    "url": "https://github.com/owner/repo",
    "full_name": "owner/repo"
  }
]
```

### `submissions/pending/`
Contains JSON files for repository submissions that are awaiting review. Each file represents one submission and follows the schema defined in `schema/submission-schema.json`.

**File naming convention:** `YYYYMMDD_HHMMSS_{submission_id_prefix}.json`

### `submissions/approved/`
Archive of approved submissions. Files are moved here from `pending/` when a submission is approved.

### `submissions/rejected/`
Archive of rejected submissions. Files are moved here from `pending/` when a submission is rejected.

### `schema/submission-schema.json`
JSON Schema definition for validating submission data structure. This ensures all submissions follow the same format and contain required fields.

## Workflow

1. **User submits form** → Frontend validates with Zod
2. **Backend receives submission** → Creates JSON file in `submissions/pending/`
3. **GitHub bot processes** → Validates against schema and checks for duplicates
4. **Maintainer reviews PR** → Approves or rejects submission
5. **GitHub bot updates database** → Adds to database and moves file to appropriate archive
6. **GitHub bot updates approved list** → Adds to `approved-repositories.json`

## GitHub Bot Operations

The GitHub bot will perform these operations when processing submissions:

### For New Repositories:
1. Fetch repository data from GitHub API
2. Insert into `repositories` table
3. Insert into `showcase` table with `approved=false`
4. On PR approval: Set `approved=true` and update `approved-repositories.json`

### For Existing Repositories:
1. Check if repository exists in `repositories` table
2. Insert into `showcase` table with `approved=false`
3. On PR approval: Set `approved=true` and update `approved-repositories.json`

### Duplicate Detection:
1. Check against `approved-repositories.json`
2. Check against pending submissions in `submissions/pending/`
3. Auto-close PR if duplicate found

## Validation Rules

All submissions must pass:
1. **JSON Schema validation** against `submission-schema.json`
2. **GitHub URL validation** (must be valid GitHub repository)
3. **Repository accessibility** (repository must exist and be public)
4. **Duplicate check** (not already approved or pending)
5. **Required fields** (submitter info, description, topic area)

## Maintenance

- The `approved-repositories.json` file should be kept in sync with the database
- Archived submissions in `approved/` and `rejected/` directories serve as audit trail
- Schema updates should be backward compatible or include migration strategy
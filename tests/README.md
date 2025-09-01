# Testing documentation

This document describes how to execute the testcases for the different 
components of the application

## Frontend

### Selenium test - Finding and checking github links
At this stage, the script relies on localhost instead of Docker container names.

**Requirements**
- Python >= 3.9
- Firefox Browser

1. **Create Environment File**

   - **DB conn & Frontend url:**
     - Create a file at `tests/frontend/selenium/.env` with:
       ```
       POSTGRES_DB_URL=postgresql://postgres:orb@localhost:5432/sample
       FRONTEND_URL=http://localhost:8000
       ```
       (Notice the use of localhost instead of the Docker container name)

2. **Virtual environtment (venv) Setup**

   Add a .venv directory at `tests/frontend/selenium` with:

   ```bash
   python -m venv .venv
   ```

   Activate virtual environment:
   - On Linux/MacOS
   ```bash
   source venv/bin/activate
   ```
   - On Windows - Powershell
   ```bash
   .\.venv\Scripts\Activate.ps1
   ```
   - On Windows - Command Prompt
   ```bash
   .\.venv\Scripts\activate
   ```
   
   Add all requirements:
   ```bash
   pip install -r requirements.txt
   ```

3. **Run script**

   From `tests/frontend/selenium`, run:
   ```bash
   python test_repository_pages_links.py
   ```
   This will open a firefox web browser that will iterate through all repository pages
   to retrieve for all the links on the attributes `href` of the `<a>` tags and
   proceed to test them.
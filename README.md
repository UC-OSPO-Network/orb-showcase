# UC ORB Showcase

## Overview

The University of California Open Source Repository Browser Showcase (UC ORB Showcase) enhances the discovery and visibility of open source projects across the UC system, making it easier for researchers, students, and external collaborators to engage with relevant projects. By mapping and classifying open source efforts, it highlights the impact of contributions from UC campuses, increasing recognition and potential funding opportunities.

#

```bash
git clone https://github.com/UC-OSPO-Network/orb-showcase
```

## Running the Application (Docker Compose)

1. **Create Environment Files**

   - **Backend:**
     - Create a file at `backend/.env` with:
       ```
       POSTGRES_DB_URL=postgresql://postgres:orb@orb-db:5432/sample
       ```
   - **Frontend:**
     - Create a file at `frontend/.env` with (example):
       ```
       NEXT_PUBLIC_API_URL=http://localhost:8000
       ```
    
2. **Database Setup**

   Create `local-dev-network` if it doesn't exist:

   ```bash
   docker network create local-dev-net
   ```

   Start the database container:
   
   ```bash
   docker run -d \
     --name orb-db \
     --network local-dev-net \
     -e POSTGRES_USER=postgres \
     -e POSTGRES_PASSWORD=orb \
     -e POSTGRES_DB=sample \
     -p 5432:5432 \
     postgres:15
   ```

   Load schema and dummy data:
   ```bash
   cat db/sample.sql | docker exec -i orb-db psql -U postgres -d sample
   ```

3. **Start All Services**

   From the project root, run:
   ```bash
   docker-compose up --build 
   ```
   This will start the backend, frontend, and connect to your running Postgres database (all on the `local-dev-net` Docker network).

   **Tip:** For subsequent runs (when no code or dependency changes are made), you can use:
   ```bash
   docker-compose up
   ```
   for faster startup.

4. **Accessing the App**
   - **Frontend:** http://localhost:3000
   - **Backend API:** http://localhost:8000

---

## Notes
- Both backend and frontend require their own `.env` files for configuration. These are mounted into the containers automatically by Docker Compose.
- The backend must use `orb-db` as the database host when running in Docker Compose (not `localhost`).
- For local (non-Docker) development, you may use `localhost` as the database host.

---



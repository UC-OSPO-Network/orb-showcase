# UC ORB Showcase

## Introduction

**UC ORB Showcase** is a full-stack web application that helps discover and highlight open source projects across the University of California system.

It consists of:
- **Backend:** A FastAPI (Python) service that provides an API for repository data.
- **Frontend:** A Next.js (React) web interface for browsing and searching repositories.
- **Database:** A PostgreSQL database that stores repository metadata.

The application is designed to be run easily using Docker Compose, which orchestrates all services together.

## Get Started

### Clone the Repository

```bash
git clone https://github.com/UC-OSPO-Network/orb-showcase
```

## Prerequisites

- **Docker and Docker Compose must be installed** on your system - [Get Docker here.](https://docs.docker.com/get-docker/)


## Database Options

You have two options for the database:

### 1. **Use the Provided Dummy Database (Recommended for Demo/Testing)**
- A sample database schema and data are provided in `db/sample.sql`.
- This is the quickest way to get started.

### 2. **Use Your Own Database**
- You can connect the backend to your own PostgreSQL database.
- **Important:** Your database must have a table named `combined_repositories_showcase` with at least the following fields (as required by the backend):

| Field Name         | Type      | Description                        |
|--------------------|-----------|------------------------------------|
| id                 | int       | Primary key                        |
| full_name          | str       | Repository full name               |
| description        | str       | Description                        |
| university         | str       | University name                    |
| license            | str       | License                            |
| owner              | str       | Owner                              |
| organization       | int       | Organization                       |
| language           | str       | Language                           |
| stargazers_count   | int       | Stars                              |
| html_url           | str       | Repository URL                     |
| forks_count        | int       | Forks                              |
| subscribers_count  | float     | Views                              |
| created_at         | str       | Creation date                      |
| contributors       | JSON      | List of contributors               |
| readme             | str       | Readme content                     |     
| homepage           | str       | Homepage URL                       |
| default_branch     | str       | Default branch                     |

> See `backend/models.py` for the full model.

---

## Running the Application (Docker Compose)

1. **Create Environment Files**

   - **Backend:**
     - Create a file at `backend/.env` with:
       ```
       POSTGRES_DB_URL=postgresql://postgres:orb@orb-db:5432/sample
       ```
       - If using your own database, update the connection string accordingly.
   - **Frontend:**
     - Create a file at `frontend/.env` with (example):
       ```
       NEXT_PUBLIC_API_URL=http://localhost:8000
       ```
       - Add any other variables your frontend requires.

2. **Database Setup**

   - **To use the provided dummy database:**
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
   - **To use your own database:**
     - Ensure your database is running and accessible.
     - Make sure it has the required table and fields as described above.

3. **Start All Services**

   From the project root, run:
   ```bash
   docker-compose up --build
   ```
   This will start the backend, frontend, and connect to your running Postgres database (all on the `local-dev-net` Docker network).

4. **Accessing the App**
   - **Frontend:** http://localhost:3000
   - **Backend API:** http://localhost:8000

---

## Notes
- Both backend and frontend require their own `.env` files for configuration. These are mounted into the containers automatically by Docker Compose.
- The backend must use `orb-db` as the database host when running in Docker Compose (not `localhost`).
- For local (non-Docker) development, you may use `localhost` as the database host.

---






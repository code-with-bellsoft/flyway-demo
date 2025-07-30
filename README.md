# Flyway Demo App

A Spring Boot application demonstrating the use of Flyway for common database migration flows:

- Create and manage migration files
- Update DB schema and data
- Integrate Flyway into GitHub Action workflows to validate changes and perform db migration before deploying the app.


## Prerequisites

- Java 24
- Docker and Docker Compose

## Running the Application

### Running Locally

1. Start the PostgreSQL container:
   ```bash
   docker-compose up -d
   ```

2. Build and run the app:
   ```bash
   ./mvnw spring-boot:run
   ```
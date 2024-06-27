# DevOps Project README

## Project Overview

This project contains a setup for a Laravel application running with Nginx, MySQL, and a separate HTTP server container.

### Directory Structure
devops_project/
├── dockercompose/
│ ├── Dockerfile
│ └── start.sh
├── lavarel/
│ ├── Dockerfile
│ └── start.sh
├── nginx/
│ ├── Dockerfile
│ └── default.conf
├── random_http/
│ └── Dockerfile
└── README.md

## Setup Instructions

### Prerequisites

- Docker installed on your machine ([Install Docker](https://docs.docker.com/get-docker/))
- Docker Compose installed on your machine ([Install Docker Compose](https://docs.docker.com/compose/install/))

### Environment Setup

1. **Clone the repository:**
   git clone <https://github.com/EdrianCast/devops_project.git> <br>
   cd devops_project
   
1. **Build Docker Compose**
   docker-compose build

### Database Configuration
1. **MySQL Configuration (docker-compose.yml):**

- Database name: laravel
- Username: user_mysql
- Password: pass_mysql
- Root Password: admin_root
- Exposed port: 3306
- Configure your Laravel application to use these database credentials directly in the Docker Compose file (docker-compose.yml).

### Running the Application
1. Start Docker containers: <br>
docker-compose up -d

2. Access the Laravel application: 

Open a web browser and go to http://localhost:8080

### Running Tests
1. Run tests inside Laravel container: <br>
docker-compose exec laravel ./vendor/bin/phpunit


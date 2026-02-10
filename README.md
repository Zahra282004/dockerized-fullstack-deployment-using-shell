# Dockerized Full-Stack App Deployment using Shell Script

This repository contains a single Bash script that automates the deployment
of a Dockerized full-stack application from installation to runtime.

## What the script does
- Installs Docker, Docker Compose, and Nginx
- Clones the application repository
- Builds the Docker image
- Runs the application container
- Exposes the app on port 8000

## Tech Stack
- Bash
- Docker
- Django
- Nginx
- Ubuntu Linux

## How to deploy
```bash
git clone <this-repo>
cd docker-fullstack-deployment
chmod +x deploy.sh
./deploy.sh

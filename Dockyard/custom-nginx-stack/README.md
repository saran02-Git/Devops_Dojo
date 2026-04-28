# Custom Nginx Docker Deployment

## Objective
Create a custom nginx image, deploy it using docker-compose with a bind mount at /var/opt/nginx, and push the image to Docker Hub.

## What I did
- Created a simple HTML page
- Built a custom nginx image using Dockerfile
- Used docker-compose to run the container
- Mounted a volume to /var/opt/nginx
- Deployed the setup on AWS EC2
- Pushed the image to Docker Hub

## Docker Commands Used

## Build and Run
docker-compose up -d --build

## Check Running Containers
docker ps

## Inspect Container (for volume bind)
docker inspect $(docker ps -q)

## List Images
docker images

## Tag Image
docker tag custom-nginx-stack_web:latest saran0702/nginx-custom:v1

## Push to Docker Hub
docker push saran0702/nginx-custom:v1

## Output
The custom nginx page is running successfully on EC2 and is accessible through the browser.  
The volume bind mount is verified at /var/opt/nginx.  
The Docker image is pushed to Docker Hub.

## Result
Successfully created and deployed a custom nginx Docker image using Docker Compose with volume binding.

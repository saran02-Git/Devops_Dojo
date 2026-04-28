# Docker Profile website

## Objective
Create a simple personal profile website using Docker and Docker Compose on AWS EC2.

## What I did
- Created a basic HTML page with my details
- Wrote a Dockerfile using nginx
- Used docker-compose to run the container
- Deployed the app on AWS EC2
- Accessed the website using public IP


# Commands Used

## Connect to EC2
ssh -i Dock.pem ubuntu@<my-public-ip>

## To Update system
sudo apt update

## Install Docker
sudo apt install docker.io -y

## Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

## Verify Docker version
docker --version

## Install Docker Compose
sudo apt install docker-compose -y

## Verify Docker Compose
docker-compose --version

## Stop old container
sudo docker rm $(sudo docker ps -aq)

## Build and run using Docker Compose
sudo docker-compose up -d --build

##Check running containers
sudo docker ps
 

# Output
The profile page is successfully running and accessible via browser.  
Screenshots are added in the screenshots folder.

## Result
Successfully deployed a personal profile website using Docker and Docker Compose on EC2.

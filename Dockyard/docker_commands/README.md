# Docker EC2 Lab

## Objective
Set up Docker on an AWS EC2 instance and try basic Docker commands.

## What I did
- Launched an Ubuntu EC2 instance
- logged in remotely via ssh
- Installed Docker
- Ran a test container (hello-world)
- Checked Docker images and containers
- Deployed an Nginx container
- Accessed it through browser using EC2 publicIP
- Explored Docker volumes and networks

## Commands used
docker --version  
docker run hello-world  
docker images  
docker ps -a  
docker run -d -p 80:80 nginx  
docker volume create myvolume  
docker volume ls  
docker network ls  

## Output
All outputs are added in the screenshots folder.

## Result
Docker is successfully installed and containers are running on EC2.
Nginx is accessible through browser.

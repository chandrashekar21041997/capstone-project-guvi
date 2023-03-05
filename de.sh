#!/bin/bash

# Define variables
read -p "Enter image name: " IMAGE_NAME
read -p "Enter image version:" IMAGE_VERSION

# Stop all running containers
sudo docker stop $(docker ps -a -q)

# Remove all containers
sudo docker rm $(docker ps -a -q)

# Start new container with the latest image
docker run -d --name $IMAGE_NAME -p 80:80 $IMAGE_VERSION
sudo docker ps
sudo docker ps -a

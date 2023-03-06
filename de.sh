#!/bin/bash

# Define variables
read -p "Enter image name: " IMAGE_NAME
read -p "Enter image version:" IMAGE_VERSION

# Stop all running containers
sudo docker stop $(docker ps -a -q)

# Remove all containers
sudo docker rm $(docker ps -a -q)

# Start new container with the latest image
sudo docker run -it -p 80:3000 $IMAGE_NAME:$IMAGE_VERSION

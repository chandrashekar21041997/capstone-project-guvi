bash script for deploying image to server


#!/bin/bash

# Define variables
IMAGE_NAME="your-image-name"
CONTAINER_NAME="your-container-name"
SERVER_IP="your-server-ip"

# Build the Docker image
docker build -t $IMAGE_NAME .

# Push the Docker image to Docker Hub or your private registry
docker push $IMAGE_NAME

# Stop and remove any existing container with the same name
docker stop $CONTAINER_NAME || true && docker rm $CONTAINER_NAME || true

# Run the container
docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_NAME

# Copy the image to the remote server
docker save $IMAGE_NAME | ssh user@$SERVER_IP 'docker load'

# Stop and remove the container on the local machine
docker stop $CONTAINER_NAME && docker rm $CONTAINER_NAME

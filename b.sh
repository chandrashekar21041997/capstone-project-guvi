#!/bin/bash

# Define variables for image name and version
read -p "Enter image name: " IMAGE_NAME
read -p "Enter image version:" IMAGE_VERSION

# Remove images 
docker rmi $(docker images -q)


# Build Docker image
docker build -t "${IMAGE_NAME}:${IMAGE_VERSION}" .

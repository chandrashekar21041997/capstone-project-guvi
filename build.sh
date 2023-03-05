#!/bin/bash

# Define variables for image name and version
IMAGE_NAME="my-image"
IMAGE_VERSION="latest"

# Build Docker image
docker build -t "${IMAGE_NAME}:${IMAGE_VERSION}" .

#!/bin/bash



# Remove images 
docker rmi $(docker images -q)


# Build Docker image
docker build -t react:v1 .

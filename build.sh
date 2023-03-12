#!/bin/bash
sudo  docker rmi -f node:latest
sudo docker rmi -f react:latest
sudo docker build -t react-app:latest .

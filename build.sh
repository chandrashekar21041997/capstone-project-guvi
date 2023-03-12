#!/bin/bash
sudo docker image rmi -f chandrashekar117/dev:react-app
sudo docker rmi -f react-app:latest
sudo  docker rmi -f node:latest
sudo docker build -t react-app:latest .

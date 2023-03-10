#!/bin/bash
DOCKER_USER="chandrashekar117"
DOCKER_PASS="K.chandu@143"
$master
$dev
echo "Please enter value for First variable"
read master
echo "Please enter value for First variable"
read dev

if [[ "$master" == "master" ]]; then
  echo "Current branch is master"
  echo "master"
  sudo docker stop $(docker ps -a -q)
  sudo docker rm $(docker ps -a -q)
  docker rmi -f node:latest
  docker rmi -f react:v1
  chmod +x b.sh
  chmod +x de.sh
  ./b.sh
  ./de.sh
  echo $DOCKER_PASS | docker login --username $DOCKER_USER --password-stdin
  docker tag react:v1 chandrashekar117/prod
  docker push chandrashekar117/prod
elif [[ "$dev" == "dev" ]]; then
  echo "Current branch is dev"
  echo "dev"
  sudo docker stop $(docker ps -a -q)
  sudo docker rm $(docker ps -a -q)
  docker rmi -f node:latest
  docker rmi -f react:v1
  chmod +x b.sh
  chmod +x de.sh
  ./b.sh
  ./de.sh
   echo $DOCKER_PASS | docker login --username $DOCKER_USER --password-stdin
   sudo docker tag react:v1 chandrashekar117/dev
   docker push chandrashekar117/dev
else
  echo "Current branch is neither master nor dev"
fi


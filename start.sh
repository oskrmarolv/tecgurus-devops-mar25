#!/bin/bash -


PROJECT_PATH=$1;

DOCKER_IMAGE="tecgurus/devops:ejemplo-001";
DOCKER_CONTAINER_NAME="tecgurus_app_service";

docker run -d --name $DOCKER_CONTAINER_NAME \
  --env NODE_ENV='development'
  -v $PROJECT_PATH:/container/app \
  -p 3000:3000 \
  $DOCKER_IMAGE
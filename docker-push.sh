#!/usr/bin/env bash
echo "Usage: ./$0 [docker image] [tag]"
DOCKER_IMAGE="rauccapuclla/app"
TAG="latest"
if [ ! -z $1 ]; then
    DOCKER_IMAGE=$1
fi

if [ ! -z $2 ]; then
    TAG=$2
fi

docker tag app $DOCKER_IMAGE:$TAG
docker push $DOCKER_IMAGE:$TAG
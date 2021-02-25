#!/usr/bin/env bash
echo "Create a maven repo docker volume"
docker volume create --name=mavenrepo || exit 1
echo "Execute tests"
docker-compose -f docker-ci.yml run --rm maven mvn clean test || exit 1
echo "Build java service in docker"
docker-compose -f docker-ci.yml run --rm maven mvn clean package || exit 1
echo "Build docker image"
docker-compose build || exit 1
echo "Build docker image complete!!!"

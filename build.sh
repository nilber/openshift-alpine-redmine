#!/bin/bash

DOCKER_IMAGEM=openshift-alpine-redmine

docker system prune
docker rmi $DOCKER_IMAGEM

docker build src/ -t "nbmaster/$DOCKER_IMAGEM"

docker push "nbmaster/$DOCKER_IMAGEM"
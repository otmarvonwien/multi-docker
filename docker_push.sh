#!/bin/bash
docker images
# Log in to the docker CLI
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
# Take those images and push them to docker hub
docker push otmarvonwien/multi-client
docker push otmarvonwien/multi-nginx
docker push otmarvonwien/multi-server
docker push otmarvonwien/mutli-worker
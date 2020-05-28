#!usr/bin/env bash

# Docker image path
dockerpath=imyke/devops-capstone

echp "Docker image path: $dockerpath"

# Authenticate docker
docker login -u $1 -p $2

# Tag docker path
docker tag app $dockerpath:latest

# Push docker image to dockerhub registry
docker push $dockerpath:latest

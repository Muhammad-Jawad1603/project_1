#!/bin/bash

aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo_repo
echo "Starting new container..."
IMAGE_URI=$(cat /home/ubuntu/node-app/imagedefinitions.json)

sudo docker pull 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo_repo:latest
sudo docker run -d --name node -p 3000:3000 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo_repo:latest

#!/bin/bash
echo "Pulling latest image from ECR..."
sudo aws ecr get-login-password --region eu-west-1 | sudo docker login --username AWS --password-stdin 099199746132.dkr.ecr.eu-west-1.amazonaws.com

IMAGE_URI=$(cat /home/ubuntu/deploy/imagedefinitions.json | jq -r '.[0].imageUri')
echo "Using image: $IMAGE_URI"

echo "Stopping old container..."
sudo docker stop hello-world-node || true
sudo docker rm hello-world-node || true

echo "Removing old Docker images..."
sudo docker rmi -f $(sudo docker images -q) || true

echo "Pulling the latest image..."
sudo docker pull $IMAGE_URI

echo "Starting new container..."
sudo docker run -d --name hello-world-node -p 3000:3000 $IMAGE_URI

#!/bin/bash
echo "Pulling latest image from ECR..."
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 099199746132.dkr.ecr.eu-west-1.amazonaws.com
IMAGE_URI=$(cat /home/ubuntu/deploy/imagedefinitions.json | jq -r '.[0].imageUri')

echo "Running new container..."
docker run -d --name my-app -p 3000:3000 $IMAGE_URI

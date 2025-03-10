#!/bin/bash
echo "Script started at $(date)" | tee -a /home/ubuntu/deploy/scripts/debug.log

echo "Pulling latest image from ECR..." | tee -a /home/ubuntu/deploy/scripts/debug.log
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 099199746132.dkr.ecr.eu-west-1.amazonaws.com

IMAGE_URI=$(cat /home/ubuntu/deploy/imagedefinitions.json | jq -r '.[0].imageUri')
echo "Using image: $IMAGE_URI" | tee -a /home/ubuntu/deploy/scripts/debug.log

echo "Stopping any existing container..." | tee -a /home/ubuntu/deploy/scripts/debug.log
docker stop hello-world-node || true
docker rm hello-world-node || true

echo "Starting new container..." | tee -a /home/ubuntu/deploy/scripts/debug.log
docker run -d --name hello-world-node -p 3000:3000 $IMAGE_URI | tee -a /home/ubuntu/deploy/scripts/debug.log

echo "Script finished at $(date)" | tee -a /home/ubuntu/deploy/scripts/debug.log

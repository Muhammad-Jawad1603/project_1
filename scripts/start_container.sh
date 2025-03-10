#!/bin/bash
echo "Script started at $(date)" | sudo tee -a /home/ubuntu/deploy/scripts/debug.log

echo "Pulling latest image from ECR..." | sudo tee -a /home/ubuntu/deploy/scripts/debug.log
sudo aws ecr get-login-password --region eu-west-1 | sudo docker login --username AWS --password-stdin 099199746132.dkr.ecr.eu-west-1.amazonaws.com

IMAGE_URI=$(cat /home/ubuntu/deploy/imagedefinitions.json | jq -r '.[0].imageUri')
echo "Using image: $IMAGE_URI" | sudo tee -a /home/ubuntu/deploy/scripts/debug.log

echo "Stopping any existing container..." | sudo tee -a /home/ubuntu/deploy/scripts/debug.log
sudo docker stop hello-world-node || true
sudo docker rm hello-world-node || true

echo "Starting new container..." | sudo tee -a /home/ubuntu/deploy/scripts/debug.log
sudo docker run -d --name hello-world-node -p 3000:3000 $IMAGE_URI

echo "Script finished at $(date)" | sudo tee -a /home/ubuntu/deploy/scripts/debug.log

#!/bin/bash
echo "Starting new container..."
AWS_REGION="eu-west-1"
AWS_ACCOUNT_ID="099199746132"
REPO_URI="$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/demo_repo"

# Authenticate Docker with ECR
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $REPO_URI

# Pull latest image
sudo docker pull $REPO_URI:latest

# Run the container
sudo docker run -d --name demo_app -p 3000:3000 $REPO_URI:latest
echo "New container started."

#!/bin/bash

echo "Starting new container..."
IMAGE_URI=$(cat /home/ubuntu/image_uri.txt)

sudo docker pull $IMAGE_URI
sudo docker run -d --name node -p 3000:3000 $IMAGE_URI
chmod +x /home/ubuntu/scripts/*.sh

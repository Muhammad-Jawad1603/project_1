#!/bin/bash
echo "Stopping existing container..."
CONTAINER_NAME="node"

# Check if the container is running before stopping
if [ "$(sudo docker ps -q -f name=$CONTAINER_NAME)" ]; then
    sudo docker stop $CONTAINER_NAME
    sudo docker rm $CONTAINER_NAME
    echo "Container $CONTAINER_NAME stopped and removed."
else
    echo "No running container named $CONTAINER_NAME found. Skipping stop."
fi

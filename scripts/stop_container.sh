#!/bin/bash
echo "Stopping existing container..."
CONTAINER_NAME="node"

# Check if container exists before trying to stop it
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
    echo "Container $CONTAINER_NAME stopped and removed."
else
    echo "No running container named $CONTAINER_NAME found. Skipping stop."
fi

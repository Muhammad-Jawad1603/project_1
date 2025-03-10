#!/bin/bash
CONTAINER_ID=$(docker ps -q --filter "name=hello-world-node")

if [ -n "$CONTAINER_ID" ]; then
  echo "Stopping running container: hello-world-node..."
  docker stop $CONTAINER_ID
  docker rm $CONTAINER_ID
else
  echo "No running container found with name: hello-world-node."
fi

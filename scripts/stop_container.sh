#!/bin/bash
echo "Stopping existing container..."
sudo docker stop node || true
sudo docker rm node || true
chmod +x scripts/stop_container.sh
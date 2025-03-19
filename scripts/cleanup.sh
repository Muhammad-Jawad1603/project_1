#!/bin/bash
set -e

sudo rm -rf /home/ubuntu/node-app/*
echo "Moving new files to application directory..."
sudo cp -r /home/ubuntu/temp/* /home/ubuntu/node-app/
sudo docker rmi -f $(docker images -aq)


echo "Deployment files moved successfully."

sudo rm -rf /home/ubuntu/temp/*

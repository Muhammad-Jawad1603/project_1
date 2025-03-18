#!/bin/bash
set -e

sudo rm -rf /home/ubuntu/node-app/
echo "Moving new files to application directory..."
sudo mv /home/ubuntu/temp /home/ubuntu/node-app

echo "Deployment files moved successfully."

sudo rm -rf /home/ubuntu/temp/

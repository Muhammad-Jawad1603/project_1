#!/bin/bash

echo "Checking extracted deployment files..."
ls -l /opt/codedeploy-agent/deployment-root/  # List extracted files

echo "Checking if /home/ubuntu/scripts/ exists..."
if [ -d "/home/ubuntu/scripts/" ]; then
    echo "Directory exists. Fixing permissions..."
    chmod +x /home/ubuntu/scripts/*.sh
else
    echo "Error: /home/ubuntu/scripts directory does not exist!"
    exit 1
fi

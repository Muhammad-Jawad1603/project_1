#!/bin/bash
set -e  # Exit immediately if any command fails

echo "Fixing permissions for scripts..."

# Ensure the scripts directory exists before changing permissions
if [ ! -d "/home/ubuntu/deploy/scripts" ]; then
    echo "Error: /home/ubuntu/deploy/scripts directory does not exist!"
    exit 1
fi

chmod +x /home/ubuntu/deploy/scripts/*.sh
echo "Permissions fixed successfully!"


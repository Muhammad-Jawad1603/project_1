#!/bin/bash

APP_DIR="/home/ubuntu/node-app"
TEMP_DIR="/home/ubuntu/temp"

echo "Removing old application files..."
sudo rm -rf ${APP_DIR:?}/*  # Prevent accidental removal of /home/ubuntu if APP_DIR is empty

echo "Moving new files to application directory..."
shopt -s dotglob  # Ensure hidden files are included
sudo mv ${TEMP_DIR}/* ${APP_DIR}/

echo "Deployment files moved successfully."

echo "Cleaning up temporary files..."
sudo rm -rf ${TEMP_DIR:?}/*

echo "Cleanup completed successfully."


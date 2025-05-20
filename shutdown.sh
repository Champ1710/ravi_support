#!/bin/bash
set -x

SERVER=$1
USER="ubuntu"  # Change to your actual SSH user

echo "Shutting down server: $SERVER"

ssh -o StrictHostKeyChecking=no $USER@$SERVER "sudo systemctl stop myapp.service"

echo "Shutdown complete."

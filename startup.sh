#!/bin/bash
set -x

SERVER=$1
USER="ubuntu"  # Change to your actual SSH user

echo "Starting up server: $SERVER"

ssh -o StrictHostKeyChecking=no $USER@$SERVER "sudo systemctl start myapp.service"

echo "Startup complete."

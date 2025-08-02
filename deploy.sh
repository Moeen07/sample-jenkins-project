#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "🔁 Pulling latest changes..."
git pull origin development/sample

echo "🛑 Stopping existing containers..."
docker compose down

echo "🔨 Building Docker image using build.image.sh..."
chmod +x ./build_image.sh
./build_image.sh

echo "🚀 Starting containers in detached mode..."
docker compose up -d

echo "✅ Deployment complete."
#! /bin/bash

echo "Setting up fastapi for docker....."

echo "Building fastapi image from Dockerfile"
docker build -t my-fastapi-server .

echo "Creating container from my-fastapi-server image....."
docker run -itd --name my-fastapi-server-container --publish 4000:4000 my-fastapi-server
#!/bin/bash

# Build Docker image
echo "Building React application Docker image..."

docker build -t my-react-app:v1 .

# Check build status
if [ $? -eq 0 ]; then
    echo "Docker image built successfully!"
else
    echo "Docker image build failed!"
    exit 1
fi
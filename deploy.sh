#!/bin/bash

# Stop existing container if running
docker stop react-container 2>/dev/null

# Remove existing container if present
docker rm react-container 2>/dev/null

# Deploy new container
echo "Deploying React application..."

docker run -d \
  --name react-container \
  -p 80:80 \
  --restart unless-stopped \
  my-react-app:v1

# Check deployment status
if [ $? -eq 0 ]; then
    echo "Application deployed successfully!"
    echo "Access your application at http://localhost"
else
    echo "Deployment failed!"
    exit 1
fi
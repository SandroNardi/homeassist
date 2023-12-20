echo "Stopping container..."
docker stop homeassistant
echo "Removing old images and container..."
docker image rm homeassistant
docker container rm homeassistant
echo "Pulling new image..."
docker pull home-assistant/home-assistant
echo "Composing..."
docker compose up -d
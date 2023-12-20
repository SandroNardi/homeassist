echo "Stopping container..."
docker stop homeassistant
echo "Removing old images and container..."
docker image rm home-assistant/home-assistant
docker container rm homeassistant
echo "Pulling new image..."
docker pull home-assistant/home-assistant
echo "Composing..."
docker compose up -d
echo "http://" ifconfig eth0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' ":8123"
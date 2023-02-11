#!bin/bash

#Update packages 
#sudo apt update && upgrade

# Check if Docker is installed
if command -v docker >/dev/null 2>&1; then
echo "Docker is already installed"
else
#Installing docker 
sudo apt install docker.io -y

#Check docker version
sudo docker -v
fi
sleep 4

# Check if Docker Compose is installed
if command -v docker-compose >/dev/null 2>&1; then
echo "Docker Compose is already installed"
else
#Installing docker compose
sudo mkdir -p ~/.docker/cli-plugins/
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#Check docker compose version
sudo docker-compose --version
fi
sleep 3

#Display a message
echo "Thank you for the task! I enjoyed it"
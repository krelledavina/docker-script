#!bin/bash

#Update packages 
sudo apt update && upgrade

#Installing docker 
sudo apt install docker.io -y

#Check docker version
sudo docker -v
sleep 4

#Installing docker compose
sudo mkdir -p ~/.docker/cli-plugins/
sudo curl -SL https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#Check docker compose version
sudo docker-compose --version

sleep 3
#Display a message
echo "Thank you for the task! I enjoyed it"
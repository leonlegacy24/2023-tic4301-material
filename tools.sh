#!/bin/bash
sudo apt-get update
echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections


## Docker
sudo apt-get install -y docker.io
sudo systemctl enable docker --now
sudo usermod -aG docker vagrant

## Docker-compose 
sudo apt-get install -y docker-compose

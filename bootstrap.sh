#!/bin/sh

#
# Copyright (c) 2014-2022 Bjoern Kimminich & the OWASP Juice Shop contributors.
# SPDX-License-Identifier: MIT
#

# Exit on error
set -e

# Add docker key and repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo bash -c 'echo "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker-ce.list'


# Install apache and docker
apt-get update -qq
apt-get install -qqy apache2 docker-ce

# Download and start docker image with Juice Shop
docker run -d --restart=always -d -p 3000:3000 --name juice-shop bkimminich/juice-shop

docker run -d --rm -it -p 8080:80 vulnerables/web-dvwa

# Enable proxy modules in apache and restart
a2enmod proxy_http
systemctl restart apache2.service
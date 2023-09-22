#!/bin/bash
sudo apt-get update

##  service install
sudo apt-get install -y vsftpd bind9
sudo service apache2 start

/etc/init.d/vsftpd start 


sudo ufw allow 80 # Allow DNS
sudo ufw allow 21  # Allow FTP

# Enable the firewall and allow SSH connections
sudo ufw --force enable


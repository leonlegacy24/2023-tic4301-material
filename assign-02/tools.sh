#!/bin/bash
sudo apt-get update

##  service install
sudo apt-get install -y vsftpd bind9
sudo service apache2 start

/etc/init.d/vsftpd start 



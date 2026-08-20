#! /usr/bin/bash

# update docker containers
/home/pi/scripts/docker-update.sh
sleep 5

# update system
sudo apt-get update
sudo apt-get -y upgrade
sleep 5

# reboot system
sudo reboot now

#! /usr/bin/bash

# update docker containers
/home/pi/raspberrypi-scripts/docker-update.sh
sleep 5

# update conda base environment
conda update --all
sleep 5

# update system
sudo apt-get update
sudo apt-get -y upgrade
sleep 5

# reboot system
sudo reboot now

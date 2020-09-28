#!/bin/bash

echo "Updating packages"
apt-get update
echo "Getting curl"
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
xargs -a apt-packages.txt sudo apt-get install -y

sudo snap install code --classic
sudo snap install spotify --classic
sudo snap install discord --classic


curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
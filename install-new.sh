#!/bin/bash

apt-get update
sudo apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
xargs -a apt-packages.txt sudo apt-get install -y

sudo snap install code --classic
sudo snap install spotify --classic
sudo snap install discord --classic

pip3 install -r requirements.txt

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
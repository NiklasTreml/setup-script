#!/bin/bash
echo "######################  Getting Updates  ######################"
sudo apt-get update -y && sudo apt-get upgrade -y

echo "######################  Getting apt packages  ######################"
xargs -a apt-packages.txt sudo apt-get install -y

echo "######################  Getting NodeJS  ######################"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

echo "######################  Getting Snap Packages  ######################"
sudo snap install code --classic
sudo snap install spotify --classic
sudo snap install discord --classic

echo "######################  Getting Python Packages  ######################"
pip3 install -r requirements.txt

echo "######################  Getting Docker  ######################"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
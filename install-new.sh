#!/bin/sh



echo "######################  Getting Updates  ######################"
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt update

echo "######################  Getting apt packages  ######################"


sudo apt-get install snapd -y
sudo apt-get install git-all -y
sudo apt-get install wget -y
sudo apt-get install vim -y
sudo apt-get install screen -y
sudo apt-get install python3.8 -y
sudo apt-get install python3-pip -y
sudo apt-get install nodejs -y


echo "######################  Getting NodeJS  ######################"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

echo "######################  Getting Snap Packages  ######################"
sudo snap install code --classic
sudo snap install spotify --classic
sudo snap install discord --classic

echo "######################  Getting Python Packages  ######################"
pip3 install -r requirements.txt

echo "######################  Getting NPM Packages  ######################"
npm i express axios concurrently fetch r2 socket.io form-data dotenv brain.js p5 ml5

echo "######################  Doing git stuff  ######################"
git config --global credential.helper store

echo "######################  Getting Docker  ######################"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
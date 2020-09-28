#!/bin/sh



echo "######################  Getting Updates  ######################"
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt update

echo "######################  Getting NodeJS  ######################"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -


echo "######################  Getting apt packages  ######################"
sudo apt-get install snapd -y
sudo apt-get install git-all -y
sudo apt-get install wget -y
sudo apt-get install vim -y
sudo apt-get install screen -y
sudo apt-get install python3.8 -y
sudo apt-get install python3-pip -y
sudo apt-get install nodejs -y



echo "######################  Getting Snap Packages  ######################"
sudo snap install code --classic
sudo snap install spotify --classic
sudo snap install discord --classic

echo "######################  Getting Python Packages  ######################"
sudo pip3 install -r requirements.txt

echo "######################  Getting NPM Packages  ######################"
sudo apt-get install -y build-essential
sudo npm i express axios concurrently fetch r2 socket.io form-data dotenv brain.js p5 ml5

echo "######################  Doing git stuff  ######################"
git config --global credential.helper store

echo "######################  Getting Docker  ######################"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER

echo "######################  Install Oh-my-ZSH  ######################"
sudo apt install zsh -y
sudo chsh -s $(which zsh)
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "######################  Setting up Aliases  ######################"
alias ll="ls -lah"

echo "######################  Cleaning Up  ######################"
rm requirements.txt
rm RANDME.md
rm package-lock.json
rm get-docker.sh
rm -rf node_modules  
rm -- "$0"

echo "######################  DONE!!  ######################"
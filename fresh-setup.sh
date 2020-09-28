#!/bin/sh
#Use this oneliner to download and install the script
#wget https://raw.githubusercontent.com/NiklasTreml/setup-script/master/fresh-setup.sh && sudo chmod a+x fresh-setup.sh && sudo ./fresh-setup.sh
#or with curl
#curl https://raw.githubusercontent.com/NiklasTreml/setup-script/master/fresh-setup.sh -o fresh-setup.sh && sudo chmod a+x fresh-setup.sh && sudo ./fresh-setup.sh
echo "######################  Adding User  ######################"

echo "Create a new user? Press 'n' to use the current user and add the current user to group docker "
echo "Pressing 'y' will add the new user to sudo and docker"
echo "[y/n]"
read choice

if [ "$choice" = "y" ]; then

echo "Enter Username"

read user_name
adduser $user_name
usermod -aG sudo $user_name
else
user_name=$USER
fi

echo $user_name

echo "######################  Getting Updates  ######################"
apt-get update -y && apt-get upgrade -y
apt update

echo "######################  Getting NodeJS  ######################"
curl -sL https://deb.nodesource.com/setup_14.x | -E bash -


echo "######################  Getting apt packages  ######################"
apt-get install snapd -y
apt-get install git-all -y
apt-get install wget -y
apt-get install curl -y
apt-get install vim -y
apt-get install screen -y
apt-get install python3.8 -y
apt-get install python3-pip -y
apt-get install nodejs -y



echo "######################  Getting Snap Packages  ######################"
snap install code --classic
snap install spotify --classic
snap install discord --classic

echo "######################  Getting Python Packages  ######################"
pip3 install python-dotenv \
flask \
matplotlib \
numpy \
pandas \
requests \
scikit-learn \
seaborn \
tensorflow \
jupyter                                 #using this instead of the requirements txt, so i can just wget the script


echo "######################  Getting NPM Packages  ######################"
apt-get install -y build-essential
npm i express axios concurrently fetch r2 socket.io form-data dotenv brain.js p5 ml5

echo "######################  Doing git stuff  ######################"
git config --global credential.helper store

echo "######################  Getting Docker  ######################"
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker $user_name

echo "######################  Install Oh-my-ZSH  ######################"
apt install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "######################  Setting up Aliases  ######################"
alias ll="ls -lah"

echo "######################  Cleaning Up  ######################"
rm requirements.txt
rm README.md
rm package-lock.json
rm get-docker.sh
rm -rf node_modules  
rm -- "$0"

echo "######################  User will now switch to $user_name  ######################"

su $user_name
echo "######################  DONE!!  ######################"

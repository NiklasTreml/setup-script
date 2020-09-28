# setup-script

Installs all the software I need.

Use this oneliner to install everything:

`wget https://raw.githubusercontent.com/NiklasTreml/setup-script/master/fresh-setup.sh && sudo chmod 766 fresh-setup.sh && sudo ./fresh-setup.sh`

or with curl

`curl https://raw.githubusercontent.com/NiklasTreml/setup-script/master/fresh-setup.sh -o fresh-setup.sh && sudo chmod 766 fresh-setup.sh && sudo ./fresh-setup.sh`

# Summary of what this script will do:

## Important
This script is intended to be run as root on a fresh install of ubuntu, it will ask for user to create, which will also be added to the group docker. You can also have the script use your active user, it should be added to the neccessary groups anyways

### Software Installs

- apt-get update and apt-get upgrade as well as apt update
- build-essential
- snap
- git
- wget
- curl
- vim
- screen
- python3.8
- python3 pip
- NodeJS
- VS Code
- Spotify
- Discord
### Python Packages
- python-dotenv
- matplotlib
- numpy
- pandas
- requests
- scikit-learn
- seaborn
- tensorflow 2
- jupyter
### npm Packages
- express
- axios
- concurrently
- fetch
- r2
- socket.io
- form-data
- dotenv
- brain.js
- p5
- ml5
### Miscellaneous
- ZSH
- Oh my ZSH
- Docker
- Creates and adds a user to the group `docker`
- git config --global credential.helper store
### After the execution the script should delete all the files it created, including itself
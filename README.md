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

- aqemu
- asbru-cm
- bashtop
- build-essential
- curl
- Discord
- dotnet SDK
- git
- GoLang
- neofetch
- NodeJS
- Postman
- python3 pip
- python3.8
- screen
- snap
- Spotify
- vim
- VS Code
- wget
### Python Packages
- jupyter
- matplotlib
- numpy
- pandas
- python-dotenv
- requests
- scikit-learn
- seaborn
- tensorflow 2
### npm Packages
- axios
- brain.js
- concurrently
- dotenv
- express
- fetch
- form-data
- ml5
- p5
- r2
- socket.io
### Miscellaneous
- ZSH
- Oh my ZSH
- Docker
- Creates and adds a user to the group `docker`
- git config --global credential.helper store
### After the execution the script should delete all the files it created, including itself
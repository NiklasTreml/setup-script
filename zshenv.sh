
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
curl https://raw.githubusercontent.com/NiklasTreml/setup-script/master/.zshrc > ~/.zshrc

source ~/.zshrc

echo "######################  Cleaning Up  ######################"
rm requirements.txt
rm README.md
rm package-lock.json
rm get-docker.sh
rm -rf node_modules  
rm fresh-setup.sh
rm -- "$0"

source ~/.zshrc

echo "######################  DONE!!  ######################"
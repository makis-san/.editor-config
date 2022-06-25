#!/bin/bash

installHomebrew() {
  clear && printf '\e[3J'
  echo Installing Homebrew...
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  installZSH
}

installNodeJs() {
  clear && printf '\e[3J'
  echo Installing NVM ...
  brew install nvm 
  nvm install node
}

installVSCODE() {
  clear && printf '\e[3J'
  echo Installing vsCode ...
  brew install --cask visual-studio-code
}

installZSH() {
  clear && printf '\e[3J'
  echo Installing zsh ...
  brew install zsh
  echo Installing Hyper terminal ...
  brew install --cask hyper
  cp .zshrc ~/
  installVSCODE
}

read -p "Install homebrew? (yes/no) " yn

case $yn in 
	yes ) installHomebrew;;
	no ) installZSH;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac


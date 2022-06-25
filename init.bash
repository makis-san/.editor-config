#!/bin/bash

installHomebrew() {
  echo Installing Homebrew...
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  installZSH
}

installNodeJs() {
  echo Installing NVM ...
  brew install nvm 
  nvm install node
}

installVSCODE() {
  echo Installing vsCode ...
  brew install --cask visual-studio-code
}

installZSH() {
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


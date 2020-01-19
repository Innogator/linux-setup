#!/bin/bash

## Update packages and Upgrade system
sudo apt update -y
sudo apt upgrade -y

## Git ##
echo '###Installing Git..'
sudo apt install git -y

# Git Configuration
echo '###Congigure Git..'

echo "Enter the Global Username for Git:";
read GITUSER;
git config --global user.name "${GITUSER}"

echo "Enter the Global Email for Git:";
read GITEMAIL;
git config --global user.email "${GITEMAIL}"

echo 'Git has been configured!'
git config --list

git config --global credential.helper store


# neovim
sudo apt install neovim -y
git config --global core.editor nvim

# tmux
sudo apt install tmux -y

# zsh
sudo apt install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# python
sudo apt install python-pip -y
sudo apt install python3-pip -y


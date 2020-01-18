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

# neovim
sudo apt install neovim -y
sudo apt install tmux -y
sudo apt install zsh

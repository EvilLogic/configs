#!/bin/bash

# Just install some stuff, nothing fancy here

# make sure we have git
sudo apt install git -y

# install zsh
sudo apt install zsh -y
cp .zshrc ~/.zshrc
chsh -s `which zsh`

# install tmux
sudo apt install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf

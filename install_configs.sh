#!/bin/bash

# Move all the configs to the right places and install tools

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
~/.tmux/plugins/tpm/scripts/install_plugins.sh

# install vim
sudo apt install vim -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

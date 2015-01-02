#!/usr/bin/env bash

ln -s ~/dotfiles/inputrc ~/.inputrc

sudo apt-get install fish
sudo apt-get install vim
sudo apt-get install emacs
sudo apt-get install setuptools


#c chsh -s /usr/bin/fish

# INSTALL Brew for linux
sudo apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

## INSTALL neovim
brew tap neovim/homebrew-neovim
brew install --HEAD neovim

# ubuntu ppa
# sudo add-apt-repository ppa:neovim-ppa/unstable
# sudo apt-get update
# sudo apt-get install neovim

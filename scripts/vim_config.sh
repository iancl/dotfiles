#!/usr/bin/env bash

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
curl -LSso ~/dotfiles/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/dotfiles

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

# install python depencies
sudo pip install rope
sudo pip install ropemode
sudo pip install ropevim
sudo pip install pep8
cd vim/bundle/ropevim
sudo python setup.py install
cd ~/dotfiles

sudo pip install neovim

# c/c++

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer # --system-clang

#!/usr/bin/env bash

## BREW
if [ ! `which brew` ]; then
    echo "Installing brew .."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating brew"
brew update
brew upgrade

#
# if [ ! `which node` ]; then
#     brew install node
# fi


## ocaml
### use in emacs for reason
brew install ocaml
brew install opam

## EMACS
echo "Installing Emacs"
brew unlink emacs
brew install emacs --with-cocoa
cp -r /usr/local/Cellar/emacs/24.5/Emacs.app /Applications
sudo rm /usr/bin/emacs
sudo rm -rf /usr/share/emacs

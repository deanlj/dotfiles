#!/usr/bin/env bash

set -e

echo 'start macos/install-fonts.sh'

# Ask for the administrator password upfront
sudo -v
cd $HOME/.dotfiles
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
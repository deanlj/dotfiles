#!/usr/bin/env bash

set -e

echo 'start macos/install-fonts.sh'

# Ask for the administrator password upfront
sudo -v

# Install Nerd Font for oh-my-posh
brew install font-meslo-lg-nerd-font

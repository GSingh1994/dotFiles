#!/bin/bash

# Copy dotfiles
#./copy.sh

# Update Ubuntu and get standard repository programs
sudo dnf update && sudo dnf upgrade  -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo dnf install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install git
install bat
install breeze-cursor-theme
install code
install exercism
install fira-code-fonts
install gnome-tweaks
install google-chrome-stable
install micro
install nodejs
install papirus-icon-theme
install zsh
install wl-clipboard
#install rpmfusion-free-release
#install rpmfusion-nonfree-release

# Run all scripts in programs/
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo dnf upgrade -y
sudo dnf autoremove -y

#!/bin/sh

# Arch linux installation script
sudo pacman -Syyu --noconfirm

# Mandatory packages
sudo pacman -S git man alacritty neovim zsh unzip python3 nodejs --noconfirm

# Enable AUR
git clone https://aur.archlinux.org/yay-git.git /tmp/yay-git && cd /tmp/yay-git && makepkg -si --noconfirm && cd -

# i3 config
cp config ~/.config/i3/config

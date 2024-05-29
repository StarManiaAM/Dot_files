#!/bin/sh

# Arch linux installation script
sudo pacman -Syyu --noconfirm

# Mandatory packages
sudo pacman -S git man alacritty neovim zsh unzip python3 nodejs bat bitwarden clang discord eog feh neofetch net-tools os-prober maim xclip picom xorg-xinput dunst fuse2 rofi polybar p7zip brightnessctl  --noconfirm

# Enable AUR
git clone https://aur.archlinux.org/yay-git.git /tmp/yay-git && cd /tmp/yay-git && makepkg -si --noconfirm && cd -

# i3 config
mkdir -p ~/.config/i3
cp config ~/.config/i3/config

sudo pacman -R i3lock

yay i3lock-color

cp -r scripts ~/.scripts
cp wallpaper.jpg ~/Pictures/wallpaper.jpg

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

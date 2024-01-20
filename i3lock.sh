#!/bin/sh
sudo pacman -R i3lock

yay i3lock-color

mkdir ~/.config/scripts

cp lock ~/.config/scripts/lock

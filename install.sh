#!/bin/sh

# Arch linux installation script

# Mandatory packages
pacman -S git man unzip python3 nodejs --noconfirm

# Enable AUR
git clone https://aur.archlinux.org/yay-git.git && cd yay-git && makepkg -si && cd -

# Configuration files
git clone git@github.com:StarManiaAM/Dot_files.git
mkdir -p .config/alacritty
cp Dot_files/alacritty.toml ~/.config/alacritty

# ZSH installation
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

# Alacritty font configuration
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
mkdir -p /usr/local/share/fonts/ttf/JetBrainsMonoNerd
unzip JetBrainsMono.zip /usr/local/share/fonts/ttf/JetBrainsMonoNerd

## Plugins zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Vim installation
pacman -S neovim --noconfirm
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
cp Dot_files/nvim/lua/plugins/init.lua .config/nvim/lua/plugins/init.lua
cp Dot_files/nvim/lua/core/init.lua .config/nvim/lua/core/init.lua
cp Dot_files/nvim/lua/custom/plugins/lua .config/nvim/lua/.custom/plugins.lua
cp Dot_files/nvim/lua/core/default_config.lua .config/nvim/lua/core/default_config.lua

nvim

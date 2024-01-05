#!/bin/sh

# Arch linux installation script

# Mandatory packages
sudo pacman -S git man alacritty neovim zsh unzip python3 nodejs --noconfirm

# Enable AUR
git clone https://aur.archlinux.org/yay-git.git /tmp/yay-git && cd /tmp/yay-git && makepkg -si --noconfirm && cd -

# Configuration files
mkdir -p .config/alacritty
cp Dot_files/alacritty.toml ~/.config/alacritty/alacritty.toml

# Alacritty font configuration
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip -O /tmp/JetBrainsMono.zip
sudo mkdir -p /usr/local/share/fonts/ttf/JetBrainsMonoNerd
sudo unzip /tmp/JetBrainsMono.zip -d /usr/local/share/fonts/ttf/JetBrainsMonoNerd

## Plugins zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Vim installation
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

cp Dot_files/nvim/lua/plugins/init.lua .config/nvim/lua/plugins/init.lua
cp Dot_files/nvim/lua/core/init.lua .config/nvim/lua/core/init.lua
cp Dot_files/nvim/lua/core/default_config.lua .config/nvim/lua/core/default_config.lua

# ZSH installation
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

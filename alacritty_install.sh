mkdir -p ~/.config/alacritty
cp alacritty.toml ~/.config/alacritty/alacritty.toml

# Alacritty font configuration
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip -O /tmp/JetBrainsMono.zip
sudo mkdir -p /usr/local/share/fonts/ttf/JetBrainsMonoNerd
sudo unzip /tmp/JetBrainsMono.zip -d /usr/local/share/fonts/ttf/JetBrainsMonoNer

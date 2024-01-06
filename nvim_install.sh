sudo pacman -S nvim --noconfirm
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

cp nvim/lua/plugins/init.lua ~/.config/nvim/lua/plugins/init.lua
cp nvim/lua/core/init.lua ~/.config/nvim/lua/core/init.lua
cp nvim/lua/core/default_config.lua ~/.config/nvim/lua/core/default_config.lua

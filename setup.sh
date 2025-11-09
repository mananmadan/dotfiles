#!/bin/bash

## --- Define Paths ------ ##
HOME_PATH="$HOME"
NVIM_CONFIG_DIR="$HOME_PATH/.config/nvim"
TMUX_CONFIG_DIR="$HOME_PATH/.config/tmux"

echo "-- Install neccessory dependencies --"
# Update and install packages
apt update -y
apt install -y vim tmux software-properties-common ripgrep curl wget

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim


echo "-- Setting up environment for $(whoami) --"
echo "-- NVIM setup --"
mkdir -p "$NVIM_CONFIG_DIR"

# Copy Lua config files into Neovim config directory
cp -rf lua/ "$NVIM_CONFIG_DIR/" 
cp init.lua "$NVIM_CONFIG_DIR/"

echo "-- Lua file copied --"

if [ -f "$HOME/.bashrc" ]; then
       echo "alias nvim='$PWD/squashfs-root/usr/bin/nvim'" >> "$HOME/.bashrc"
       echo "-- NVIM alias added to ~/.bashrc --"
else
       echo "-- ~/.bashrc not found. Alias not added. --"
fi

echo "-- Setting up tmux environment --"
cp -rf tmux.conf "$TMUX_CONFIG_DIR"

echo "-- Set up done! --"
source $HOME/.bashrc


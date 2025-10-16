#!/bin/bash

# Update and install packages
apt update -y
apt install -y vim tmux software-properties-common
add-apt-repository ppa:neovim-ppa/stable
apt update
apt install -y neovim

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim


# Setup paths
HOME_PATH="$HOME"
NVIM_CONFIG_DIR="$HOME_PATH/.config/nvim"
LUA_PATH="$NVIM_CONFIG_DIR/lua"

echo "-- Setting up environment for $(whoami) --"

echo "-- NVIM setup --"
mkdir -p "$LUA_PATH"

# Copy Lua config files into Neovim config directory
cp init.lua "$NVIM_CONFIG_DIR/"
cp -rf ./*.lua "$LUA_PATH/"


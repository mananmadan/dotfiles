#!/bin/bash

# Update and install packages
apt update -y
apt install -y vim tmux software-properties-common ripgrep curl wget

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim


# Setup paths
HOME_PATH="$HOME"
NVIM_CONFIG_DIR="$HOME_PATH/.config/nvim"

echo "-- Setting up environment for $(whoami) --"

echo "-- NVIM setup --"
mkdir -p "$NVIM_CONFIG_DIR"

# Copy Lua config files into Neovim config directory
cp -rf lua/ "$NVIM_CONFIG_DIR/" 
cp init.lua "$NVIM_CONFIG_DIR/"

echo "-- Lua file copied --"
alias nvim='$PWD/squashfs-root/usr/bin/nvim'

echo "-- NVIM alias made --"

#!/bin/bash

set -e

sudo apt update

# Tmux Setup

# Check if tmux is already installed 
if [[ ! $(command -v tmux) ]]
then
    sudo apt install tmux -y 
fi

if [[ ! -d "/home/ubuntu/.tmux/plugins/tpm" ]]
then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # Install Tmux Plugin Manager
fi

mv .tmux.conf ~/ # In Tmux press "ctrl+I" to install the plugins

# NeoVim Setup 
# Check if NeoVim is already installed
if [[ ! $(command -v nvim) ]]
then
    sudo apt install neovim -y
fi

# Check if curl is already installed
if [[ ! $(command -v curl) ]]
then 
    sudo apt install curl -y
fi

mkdir -p ~/.config/nvim
mv init.vim ~/.config/nvim/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Run ":PlugInstall" in vim to install plugins

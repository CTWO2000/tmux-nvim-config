#!/bin/bash

set -e

# Tmux Setup 
sudo apt install tmux 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # Install Tmux Plugin Manager
mv .tmux.conf ~/ # In Tmux press "ctrl+I" to install the plugins

# NeoVim Setup 
sudo apt install neovim
sudo apt install curl 
mkdir -p ~/.config/nvim
mv init.vim ~/.config/nvim/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Run ":PlugInstall" in vim to install plugins

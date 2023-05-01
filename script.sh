#!/bin/bash

set -e

# install git
apt install git 

# Tmux Setup 
apt install tmux 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mv .tmux.conf ~/

# NeoVim Setup 

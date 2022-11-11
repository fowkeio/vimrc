#!/bin/bash

# APT UPDATE
sudo apt update && \
sudo apt upgrade -y && \
sudo apt clean && \
sudo apt autoclean && \
sudo apt autoremove -y

# APT INSTALL
sudo apt install -y vim git curl wget build-essential cmake vim-nox python3 python3-dev gcc g++ make ccls
git clone https://github.com/fowkeio/vimrc
sudo apt clean && \
sudo apt autoclean && \
sudo apt autoremove -y

# INSTALL VIM PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# GIT CLONE MY REPO AND FONT INSTALL
cp -r fonts/ ~/.local/share/fonts
fc-cache -fv

# INSTALL .VIMRC
cp .vimrc ~/.vimrc

# VIM PLUGINTALL
vim +PlugInstall +qall

# YOUCOMPLETEME INSTALL
python3  ~/.vim/plugged/YouCompleteMe/install.py --clangd-completer

# COMPLETING INSTALL

cp .ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

#!/bin/bash

sudo su
sudo pacman -Syu
sudo pacman -S make
sudo pacman -S vim
sudo pacman -S nvim
sudo pacman -S neofetch

git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly
make
sudo pacman -Rns sddm sddm-kcm
sudo make install
sudo rm /etc/systemd/system/display-manager.service
sudo systemctl enable ly.service

sudo pacman -S alacritty
sudo pacman -S emacs

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install

cd $HOME

git clone https://github.com/catppuccin/alacritty.git
git clone https://github.com/arkenfox/user.js.git

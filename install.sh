#!/bin/bash

# Copy config folders and files to home dir
if [ -d "$HOME/.config" ]; then
    cp -rv ".config/"* "$HOME/.config/"
else
    mkdir -v "$HOME/.config"
    cp -rv ".config/"* "$HOME/.config/"
fi

# Copy bash config files to home dir
cp -v ".bashrc" "$HOME/"
cp -v ".bash_profile" "$HOME/"
cp -v ".bash_logout" "$HOME/"

# Copy vimrc to home dir
cp -v ".vimrc" "$HOME/"

# Copy xinitrc to home dir
cp -v ".xinitrc" "$HOME/"

# Copy Xresources to home dir
cp -v ".Xresources" "$HOME/"

# Copy etc config files to /etc
sudo cp -rv ".config/etc/"* "/etc/"

if [ -f "/usr/bin/apt" ]; then
    sudo apt update && sudo apt upgrade
    sudo apt install htop zathura libreoffice synaptic git hexchat fonts-noto
fi

if [ -f "/usr/bin/pacman" ]; then
    sudo pacman -Syu
    sudo pacman -S htop libreoffice i3-wm termite zathura-pdf-mupdf hexchat noto-fonts
fi

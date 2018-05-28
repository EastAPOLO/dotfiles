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

# Copy local dir to home dir
cp -r ".local/"* "$HOME/.local/"

# Install my favorite programs if apt is detected on the system
if [ -x "$(command -v apt)" ]; then
    sudo apt update && sudo apt upgrade
    sudo apt purge nano vi vim
    sudo apt install htop zathura libreoffice synaptic git weechat fonts-noto vim
fi

# Install my favorite programs if pacman is detected on the system
if [ -x "$(command -v pacman)" ]; then
    sudo pacman -Syu
    sudo pacman -Rsn nano vi
    sudo pacman -S xorg-server xorg-xinit firefox neofetch htop feh libreoffice i3-wm mate termite zathura-pdf-mupdf weechat noto-fonts gvim ttf-dejavu ttf-ubuntu-font-family pulseaudio alsa-utils 
fi

# Set sane font rendering defaults
echo "Symlinking fonts ..."

sudo ln -sfv "/etc/fonts/conf.avail/11-lcdfilter-default.conf" "/etc/fonts/conf.d"
sudo ln -sfv "/etc/fonts/conf.avail/10-sub-pixel-rgb.conf" "/etc/fonts/conf.d"
sudo ln -sfv "/etc/fonts/conf.avail/10-hinting-slight.conf" "/etc/fonts/conf.d"
sudo ln -sfv "/etc/fonts/conf.avail/70-no-bitmaps.conf" "/etc/fonts/conf.d"

echo "Font configuration complete."

# Setup vim-plug for neovim and vim
if [ -f "$HOME/.vimrc" ] && [ -x "$(command -v vim)" ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ -f "$HOME/.config/nvim/init.vim" ] && [ -x "$(command -v nvim)" ]; then
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

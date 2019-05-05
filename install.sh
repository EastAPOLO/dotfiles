#!/bin/sh

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

# Copy fonts to home dir
cp -r ".fonts/"* "$HOME/.fonts/"

# Copy scripts to home dir
cp -r "scripts/" "$HOME/"

# Install my favorite programs if apt is detected on the system
if [ -x "$(command -v apt)" ]; then
    sudo apt update && sudo apt upgrade
    sudo apt purge nano vi 
    sudo apt install htop zathura libreoffice synaptic git weechat fonts-noto vim libboost-dev cmake build-essential clang llvm curl wget feh rofi ranger ttf-dejavu firefox-esr xorg i3 mpv rustc
fi

# Install my favorite programs if pacman is detected on the system
if [ -x "$(command -v pacman)" ]; then
    sudo pacman -Syu
    sudo pacman -Rsn nano vi
    sudo pacman -S xorg-server xorg-xinit firefox neofetch htop feh libreoffice i3-wm zathura-pdf-mupdf weechat ttf-dejavu ttf-ubuntu-font-family pulseaudio pavucontrol alsa-utils rofi git iotop xarchiver zip unzip unrar p7zip xorg-xrandr rustup qt5ct maim ffmpeg alsa-plugins gvfs-smb clang llvm cmake alacritty alacritty-terminfo noto-fonts ranger w3m inkscape optipng ctags qt5-styleplugins ntfs-3g openssh cifs-utils mpv breeze-icons lxappearance usbutils

    if [ -x "$(command -v git)" ]; then
        cd "$HOME"
        mkdir sources
        cd "$HOME/sources"
        git clone https://aur.archlinux.org/trizen.git
        cd "$HOME/sources/trizen"
        makepkg -csi
        trizen -S polybar
    fi
fi

# Set sane font rendering defaults
echo "Symlinking fonts ..."

sudo ln -sfv "/etc/fonts/conf.avail/11-lcdfilter-default.conf" "/etc/fonts/conf.d"
sudo ln -sfv "/etc/fonts/conf.avail/10-sub-pixel-rgb.conf" "/etc/fonts/conf.d"
sudo ln -sfv "/etc/fonts/conf.avail/10-hinting-slight.conf" "/etc/fonts/conf.d"
sudo ln -sfv "/etc/fonts/conf.avail/70-no-bitmaps.conf" "/etc/fonts/conf.d"

echo "Font configuration complete."

# Install my favorite theme
if [ -d "$HOME/sources" ]; then
    cd "$HOME/sources"
    git clone "https://gitlab.com/EastAPOLO/Arc-Apolo.git"
    cd "Arc-Apolo"
    ./install.sh
fi

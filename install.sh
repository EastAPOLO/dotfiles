#!/bin/sh

# Copy config folders and files to home dir
if [ -d "$HOME/.config" ]; then
    cp -r ".config/"* "$HOME/.config/"
else
    mkdir "$HOME/.config"
    cp -r ".config/"* "$HOME/.config/"
fi

# Copy bash config files to home dir
cp ".bashrc" "$HOME/"
cp ".bash_profile" "$HOME/"
cp ".bash_logout" "$HOME/"

# Copy vimrc to home dir
cp ".vimrc" "$HOME/"

# Copy xinitrc to home dir
cp ".xinitrc" "$HOME/"

# Copy Xresources to home dir
cp ".Xresources" "$HOME/"

# Copy etc config files to /etc
sudo cp -r ".config/etc/"* "/etc/"

# Copy local dir to home dir 
cp -r ".local/"* "$HOME/.local/"

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
    sudo pacman -S --needed sway firefox neofetch htop imv zathura-pdf-mupdf weechat pulseaudio pavucontrol alsa-utils iotop zip unzip unrar p7zip rustup qt5-wayland grim slurp ffmpeg alsa-plugins gvfs-smb clang llvm cmake alacritty alacritty-terminfo noto-fonts ctags openssh cifs-utils mpv breeze-icons usbutils texlive-core texlive-fontsextra texlive-latexextra telegram-desktop keepassxc qemu xdg-user-dirs valgrind polkit-gnome nnn xf86-video-amdgpu python-pynvim

    if [ -x "$(command -v git)" ]; then
        cd "$HOME"
        mkdir sources
        cd "$HOME/sources"
        git clone https://aur.archlinux.org/yay.git
        cd "$HOME/sources/yay"
        makepkg -csi
    fi
    
    # Start services
    sudo systemctl enable sshd.service && sudo systemctl start sshd.service
    sudo timedatectl set-ntp true 
fi

# Set sane font rendering defaults
echo "Symlinking fonts ..."

sudo ln -sf "/etc/fonts/conf.avail/11-lcdfilter-default.conf" "/etc/fonts/conf.d"
sudo ln -sf "/etc/fonts/conf.avail/10-sub-pixel-rgb.conf" "/etc/fonts/conf.d"
sudo ln -sf "/etc/fonts/conf.avail/10-hinting-slight.conf" "/etc/fonts/conf.d"
sudo ln -sf "/etc/fonts/conf.avail/70-no-bitmaps.conf" "/etc/fonts/conf.d"

echo "Font configuration complete."

# Install my favorite theme
if [ -d "$HOME/sources" ]; then
    cd "$HOME/sources"
    git clone "https://gitlab.com/EastAPOLO/Arc-Apolo.git"
    cd "Arc-Apolo"
    ./install.sh
fi

# Create local bin dir
if [ -d "$HOME/.local/bin" ]; then
    cp -r "scripts/general/"* "$HOME/.local/bin"
    cp -r "scripts/i3/"* "$HOME/.local/bin"
    cp -r "scripts/qemu/"* "$HOME/.local/bin"
else
    mkdir "$HOME/.local/bin"
    cp -r "scripts/general/"* "$HOME/.local/bin"
    cp -r "scripts/i3/"* "$HOME/.local/bin"
    cp -r "scripts/qemu/"* "$HOME/.local/bin"
fi

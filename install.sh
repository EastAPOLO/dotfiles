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

# Copy zsh config files to home dir
cp ".zshrc" "$HOME/"
cp ".zprofile" "$HOME/"

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

# Install my favorite programs if pacman is detected on the system
if [ -x "$(command -v pacman)" ]; then
    sudo pacman -S --needed sway firefox neofetch htop zathura-pdf-mupdf weechat pavucontrol alsa-utils iotop zip unzip unrar p7zip rustup qt5ct qt5-wayland grim slurp ffmpeg alsa-plugins gvfs-smb clang llvm alacritty noto-fonts ctags openssh cifs-utils mpv breeze-icons usbutils texlive-core texlive-fontsextra texlive-latexextra telegram-desktop keepassxc xdg-user-dirs valgrind polkit-gnome xf86-video-amdgpu python-pynvim mako fakeroot binutils gcc gdb make go bash waybar nodejs wofi man man-pages patch jdk-openjdk jdk8-openjdk ttf-dejavu autoconf automake bison git xorg-server-xwayland pkg-config youtube-dl npm pipewire pipewire-pulse pipewire-alsa pipewire-jack

    if [ -x "$(command -v git)" ]; then
        cd "/tmp"
        git clone https://aur.archlinux.org/yay.git
        cd "/tmp/yay"
        makepkg -csi
    fi

    yay -S nnn-icons kepubify-bin

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
if [ -x "$(command -v git)" ]; then
    cd "/tmp"
    git clone https://github.com/EastAPOLO/apolo-dark
    cd "/tmp/apolo-dark"
    sudo make install
fi

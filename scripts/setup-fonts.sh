#!/bin/bash

LOCAL_FONTCONFIG_DIR=~/.config/fontconfig 

sudo pacman -S ttf-dejavu ttf-liberation noto-fonts ttf-ubuntu-font-family
yaourt -S ttf-ms-fonts 

echo "Symlinking fonts ..."

sudo ln -sf /etc/fonts/conf.avail/10-hinting-slight.conf /etc/fonts/conf.d
sudo ln -sf /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -sf /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -sf /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d

mkdir ${LOCAL_FONTCONFIG_DIR}

cat > "${LOCAL_FONTCONFIG_DIR}/fonts.conf" << "EOF"
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
    <match target="font">
        <edit name="autohint" mode="assign">
            <bool>true</bool>
        </edit>
        <edit name="hinting" mode="assign">
            <bool>true</bool>
        </edit>
        <edit mode="assign" name="hintstyle">
            <const>hintslight</const>
        </edit>
        <edit mode="assign" name="lcdfilter">
            <const>lcddefault</const>
        </edit>
    </match>
</fontconfig>
EOF



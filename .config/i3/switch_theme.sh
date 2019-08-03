#!/bin/bash

light_gtk_theme="Yaru"
dark_gtk_theme="Arc-Apolo"
gtk_settings="$HOME/.config/gtk-3.0/settings.ini"

light_alacritty_theme="$HOME/.config/alacritty/light/alacritty.yml"
dark_alacritty_theme="$HOME/.config/alacritty/dark/alacritty.yml"
alacritty_settings="$HOME/.config/alacritty/alacritty.yml"

light_icon_theme="breeze"
dark_icon_theme="breeze-dark"
font="Noto Sans 12"

light_firefox_profile="177gu3iz.light"
dark_firefox_profile="t8mxdmhm.default"

firefox_installs_ini="$HOME/.mozilla/firefox/installs.ini"
firefox_profiles_ini="$HOME/.mozilla/firefox/profiles.ini"

if [ $1 == 'l' ]; then
    sed -i "s/gtk-theme-name=.*/gtk-theme-name=$light_gtk_theme/" $gtk_settings
    sed -i "s/gtk-icon-theme-name=.*/gtk-icon-theme-name=$light_icon_theme/" $gtk_settings
    sed -i "s/gtk-font-name=.*/gtk-font-name=$font/" $gtk_settings
    cp $light_alacritty_theme $alacritty_settings
    pkill firefox
    sed -i "s/Default=.*/Default=$light_firefox_profile/" $firefox_installs_ini
    sed -i "s/Default=.*/Default=$light_firefox_profile/" $firefox_profiles_ini

elif [ $1 == 'd' ]; then
    sed -i "s/gtk-theme-name=.*/gtk-theme-name=$dark_gtk_theme/" $gtk_settings
    sed -i "s/gtk-icon-theme-name=.*/gtk-icon-theme-name=$dark_icon_theme/" $gtk_settings
    sed -i "s/gtk-font-name=.*/gtk-font-name=$font/" $gtk_settings
    cp $dark_alacritty_theme $alacritty_settings
    pkill firefox
    sed -i "s/Default=.*/Default=$dark_firefox_profile/" $firefox_installs_ini
    sed -i "s/Default=.*/Default=$dark_firefox_profile/" $firefox_profiles_ini
fi

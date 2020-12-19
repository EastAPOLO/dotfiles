#!/bin/sh

# Xresources
xrdb -merge $HOME/.Xresources

# Xorg
export MOZ_ENABLE_WAYLAND=0
export QT_QPA_PLATFORMTHEME=qt5ct
export XDG_CURRENT_DESKTOP=i3

# Start ssh-agent
eval $(ssh-agent)

exec i3

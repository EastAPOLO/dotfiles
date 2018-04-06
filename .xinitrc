#!/bin/sh

# Source Xresources
xrdb -merge $HOME/.Xresources 

# Theme QT applications using gtk2
export QT_QPA_PLATFORMTHEME="gtk2"

# Uncomment if DE is kde1
#export PATH=/opt/kde1/bin:$PATH
#export LD_LIBRARY_PATH=/opt/qt1/lib:/opt/kde1/lib

# Desktop Environment startx options
#exec gnome-session  # Start Gnome 
#exec startkde       # Start KDE 
#exec mate-session   # Start Mate
#exec startxfce4     # Start Xfce
#exec startlxqt      # Start LXQT
#exec startlxde      # Start LXDE

# Window Manager startx options
#exec i3             # Start i3
#exec awesome        # Start Awesome
#exec openbox        # Start Openbox
#exec dwm            # Start DWM

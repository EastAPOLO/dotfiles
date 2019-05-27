#!/bin/sh

# Xresources
xrdb -merge $HOME/.Xresources 

# QT5 settings
export QT_QPA_PLATFORMTHEME=qt5ct

# Start ssh-agent
eval $(ssh-agent)

# Uncomment if DE is kde1
#export PATH=/opt/kde1/bin:$PATH
#export LD_LIBRARY_PATH=/opt/qt1/lib:/opt/kde1/lib

# Desktop Environment startx options
#exec gnome-session 
#exec startkde  
#exec mate-session
#exec startxfce4
#exec startlxqt     
#exec startlxde     

# Window Manager startx options
exec i3         
#exec awesome       
#exec openbox
#exec dwm

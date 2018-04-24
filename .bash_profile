# Begin ~/.bash_profile
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>
# updated by Bruce Dubbs <bdubbs@linuxfromscratch.org>

# Personal environment variables and startup programs.

# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

# Set PATH so it includes user's private bin directories
PATH="$PATH:$HOME/bin:$HOME/.local/bin"

# Set editor
export EDITOR="nvim"

# Disable Google API keys for chromium
export GOOGLE_API_KEY="no"
export GOOGLE_DEFAULT_CLIENT_ID="no"
export GOOGLE_DEFAULT_CLIENT_SECRET="no"

# QT5 config
export QT_QPA_PLATFORMTHEME="gtk2"

# End ~/.bash_profile

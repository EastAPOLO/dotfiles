# Begin /etc/bashrc

# System wide aliases and functions.

# System wide environment variables and startup programs should go into
# /etc/profile.  Personal environment variables and startup programs
# should go into ~/.bash_profile.  Personal aliases and functions should
# go into ~/.bashrc

ESC=$(printf "\e")
NORMAL="\[$ESC[0m\]"
RED="\[$ESC[38;5;9m\]"
BLUE="\[$ESC[38;5;68m\]"
if [[ $EUID == 0 ]] ; then
  PS1="$RED\u [ $NORMAL\w$RED ]# $NORMAL"
else
  PS1="$BLUE\u [ $NORMAL\w$BLUE ]\$ $NORMAL"
fi

unset RED BLUE NORMAL ESC 

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ...='cd ../..'

# Check the weather
wttr() { curl wttr.in/"$1" }

# Create and change into a directory
mkcd() { mkdir -p "$1";cd "$1" }

# End /etc/bashrc

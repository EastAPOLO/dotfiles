# Begin ~/.bashrc

# System wide aliases and functions.

# System wide environment variables and startup programs should go into
# /etc/profile.  Personal environment variables and startup programs
# should go into ~/.bash_profile.  Personal aliases and functions should
# go into ~/.bashrc

# Set colors
ESC=$(printf "\e")
NORMAL="\[$ESC[0m\]"
RED="\[$ESC[38;5;9m\]"
BLUE="\[$ESC[38;5;4m\]"
WHITE="\[$ESC[38;5;15m\]"

# Special PS1 prompt when logged in as root
if [[ $EUID == 0 ]] ; then 
    PS1="$RED\u$WHITE:[$WHITE\w$RED]# $WHITE"
fi

# Special PS1 promot when using TTY or X.
if [[ $TERM == "linux" ]] ; then
    PS1="$NORMAL\u$NORMAL:[$NORMAL\w$NORMAL]\$ $NORMAL"
else
    PS1="$WHITE\u$WHITE:[$WHITE\w$WHITE]\$ $WHITE"
fi

# Do not keep color variables defined after they are used
unset NORMAL RED BLUE WHITE ESC 

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ...='cd ../..'
alias feh='feh --magick-timeout 1 --auto-rotate --auto-zoom -.'
alias iotop='sudo iotop'

# Check the weather
wttr(){ 
    curl wttr.in/"$1" 
}

# Create and change into directory
mkcd(){ 
    mkdir -p "$1"; cd "$1" 
}

# Turn off bash hash function
set +h


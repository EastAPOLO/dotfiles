# Begin ~/.bashrc

# System wide aliases and functions.

# System wide environment variables and startup programs should go into
# /etc/profile.  Personal environment variables and startup programs
# should go into ~/.bash_profile.  Personal aliases and functions should
# go into ~/.bashrc

ESC=$(printf "\e")
RED="\[$ESC[38;5;9m\]"
BLUE="\[$ESC[38;5;4m\]"
WHITE="\[$ESC[0m\]"

if [[ $EUID == 0 ]] ; then
  PS1="$RED\u$WHITE:[$WHITE\w$RED]# $WHITE"
else
  PS1="$BLUE\u$WHITE:$BLUE[$WHITE\w$BLUE]\$ $WHITE"
fi

unset RED BLUE WHITE ESC 

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ...='cd ../..'

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

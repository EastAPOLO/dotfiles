# Begin ~/.bashrc

# System wide aliases and functions.

# System wide environment variables and startup programs should go into
# /etc/profile.  Personal environment variables and startup programs
# should go into ~/.bash_profile.  Personal aliases and functions should
# go into ~/.bashrc

ESC=$(printf "\e")
NORMAL="\[\e[0m\]"
RED="\[$ESC[38;5;9m\]"
BLUE="\[$ESC[38;5;4m\]"
WHITE="\[$ESC[38;5;15m\]"

if [[ $EUID == 0 ]] ; then 
    PS1="$RED\u$WHITE:[$WHITE\w$RED]# $WHITE"
fi

if [[ $TERM == "linux" ]] ; then
    PS1="$NORMAL\u [ $NORMAL\w$NORMAL ]\$ $NORMAL"
else
    PS1="$WHITE\u$WHITE:$WHITE[$WHITE\w$WHITE]\$ $WHITE"
fi

unset NORMAL RED BLUE WHITE ESC 

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

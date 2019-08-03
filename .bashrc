# System wide aliases and functions.

# System wide environment variables and startup programs should go into
# /etc/profile.  Personal environment variables and startup programs
# should go into ~/.bash_profile.  Personal aliases and functions should
# go into ~/.bashrc

ESC=$(printf "\e")

# Normal colors
NORMAL="$ESC[0m"
BLACK="$ESC[38;5;0m"
RED="$ESC[38;5;1m"
GREEN="$ESC[38;5;2m"
YELLOW="$ESC[38;5;3m"
BLUE="$ESC[38;5;4m"
MAGENTA="$ESC[38;5;5m"
CYAN="$ESC[38;5;6m"
WHITE="$ESC[38;5;7m"

# Bright colors
BRIGHT_BLACK="$ESC[38;5;8m"
BRIGHT_RED="$ESC[38;5;9m"
BRIGHT_GREEN="$ESC[38;5;10m"
BRIGHT_YELLOW="$ESC[38;5;11m"
BRIGHT_BLUE="$ESC[38;5;12m"
BRIGHT_MAGENTA="$ESC[38;5;13m"
BRIGHT_CYAN="$ESC[38;5;14m"
BRIGHT_WHITE="$ESC[38;5;15m"

# Special PS1 prompt when using TTY or X.
if [[ $TERM == "linux" ]] ; then
    PS1="$NORMAL\u$NORMAL:[$NORMAL\w$NORMAL]\$ $NORMAL"
else
    PS1="$BRIGHT_WHITE\u$BRIGHT_WHITE:[$BRIGHT_WHITE\w$BRIGHT_WHITE]\$ $BRIGHT_WHITE"
fi

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ...='cd ../..'
alias feh='feh --magick-timeout 1 --auto-rotate --auto-zoom -.'
alias iotop='sudo iotop'
alias py='python3'
alias py2='python2'
alias dl='youtube-dl -o "%(title)s.%(ext)s"'

# Check the weather
weather(){ 
    curl wttr.in/"$1" 
}

# Get public ip address
pubip(){
    curl -s ipinfo.io/ip
}

# Turn off bash hash function
set +h

# Set to vi editing mode
set -o vi

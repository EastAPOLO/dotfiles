# Normal colors
NORMAL=$'\e[0m'
BLACK=$'\e[38;5;0m'
RED=$'\e[38;5;1m'
GREEN=$'\e[38;5;2m'
YELLOW=$'\e[38;5;3m'
BLUE=$'\e[38;5;4m'
MAGENTA=$'\e[38;5;5m'
CYAN=$'\e[38;5;6m'
WHITE=$'\e[38;5;7m'

# Bright colors
BRIGHT_BLACK=$'\e[38;5;8m'
BRIGHT_RED=$'\e[38;5;9m'
BRIGHT_GREEN=$'\e[38;5;10m'
BRIGHT_YELLOW=$'\e[38;5;11m'
BRIGHT_BLUE=$'\e[38;5;12m'
BRIGHT_MAGENTA=$'\e[38;5;13m'
BRIGHT_CYAN=$'\e[38;5;14m'
BRIGHT_WHITE=$'\e[38;5;15m'

# Special PS1 prompt when using TTY or X.
if [[ $TERM == "linux" ]] ; then
    PS1="%F{NORMAL}%n:[%~]$ "
else
    PS1="%F{BRIGHT_WHITE}%n:[%~]$ "
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
alias nnn='nnn -e'
alias mvi='mpv --config-dir=$HOME/.config/mvi'

# Check the weather
weather(){ 
    curl wttr.in/"$1" 
}

# Get public ip address
pubip(){
    curl -s ipinfo.io/ip
}

# Set location of zshrc
zstyle :compinstall filename '~/.zshrc'

# Enable completion
autoload -Uz compinit && compinit

# Enable completion menu
zstyle ':completion:*' menu select

# Set vi mode
bindkey -v

PROMPT_EOL_MARK=''

if [ -f "$HOME/.zshrc" ]; then
    source $HOME/.zshrc
fi

# Set PATH so it includes user's private bin directories
PATH="$PATH:$HOME/bin:$HOME/.local/bin"

# Set editor
export EDITOR="nvim"

# Disable Google API keys for chromium
export GOOGLE_API_KEY="no"
export GOOGLE_DEFAULT_CLIENT_ID="no"
export GOOGLE_DEFAULT_CLIENT_SECRET="no"

# Colors in manpages
export LESS_TERMCAP_md=$'\e[32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[49m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[34m'

# History
export HISTFILE=$HOME/.histfile
export SAVEHIST=1000
export HISTSIZE=1000

# Wayland
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export XDG_CURRENT_DESKTOP=sway

# Colors with ls
export LS_COLORS="di=1;94"

# Qt5 themes
export QT_QPA_PLATFORMTHEME=qt5ct

# Java
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"

# NNN
export NNN_PLUG="g:gallery;"

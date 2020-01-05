if [ -f "$HOME/.zshrc" ]; then
    source $HOME/.zshrc
fi

# Set PATH so it includes user's private bin directories
PATH="$PATH:$HOME/bin:$HOME/.local/bin"

# Set editor
export EDITOR="vim"

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

# Qt5 wayland
QT_QPA_PLATFORM=wayland-egl

# Firefox wayland
export MOZ_ENABLE_WAYLAND=1

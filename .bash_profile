#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export PAGER="less"

# XDG Paths
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state

# Add to PATH
export PATH="$HOME"/.local/scripts:"$PATH"
export PATH="$PATH":"$HOME"/.local/bin

# Cleanup
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export LESSHISTFILE=-
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}"/wget/wgetrc
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export ZDOTDIR="$HOME"/.config/zsh

export npm_config_prefix="$HOME/.local"

# Pretty-print man(1) pages.
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Bash History
export HISTCONTROL='ignoreboth:erasedups'
export HISTFILE="$XDG_STATE_HOME"/bash/history
export HISTFILESIZE=50000


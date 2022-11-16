#
# ~/.zprofile
#

# Default programs:
export EDITOR="vim"
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
# export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export LESSHISTFILE=-
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}"/wget/wgetrc
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export ZDOTDIR="$HOME"/.config/zsh

export npm_config_prefix="$HOME/.local"

# History
export HISTSIZE=1000
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export SAVEHIST=1000

# Pretty-print man(1) pages.
export LESS_TERMCAP_mb=$'\033[1;31m'
export LESS_TERMCAP_md=$'\033[1;31m'
export LESS_TERMCAP_me=$'\033[0m'
export LESS_TERMCAP_ue=$'\033[0m'
export LESS_TERMCAP_so=$'\033[1;33m'
export LESS_TERMCAP_se=$'\033[0m'
export LESS_TERMCAP_us=$'\033[1;32m'


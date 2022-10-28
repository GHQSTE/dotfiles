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


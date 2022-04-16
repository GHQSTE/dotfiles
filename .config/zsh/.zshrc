# Source
source "$ZDOTDIR/zsh-functions"
zsh_add_file "zsh-prompt"
zsh_add_file "zsh-options"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-keybindings"

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
_comp_options+=(globdots)		# Include hidden files.
zmodload zsh/complist
DISABLE_UPDATE_PROMPT=true

# History
export HISTSIZE=1000
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export SAVEHIST=1000

# Shortcut to exit shell on partial command line
# By default, Ctrl+d will not close your shell if the command line is filled, this fixes it: 
exit_zsh() { exit }
zle -N exit_zsh
bindkey '^D' exit_zsh

# disable the underline.
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none') # Disbable paste highlighting.

# Pretty-print man(1) pages.
export LESS_TERMCAP_mb=$'\033[1;31m'
export LESS_TERMCAP_md=$'\033[1;31m'
export LESS_TERMCAP_me=$'\033[0m'
export LESS_TERMCAP_ue=$'\033[0m'
export LESS_TERMCAP_so=$'\033[1;33m'
export LESS_TERMCAP_se=$'\033[0m'
export LESS_TERMCAP_us=$'\033[1;32m'

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

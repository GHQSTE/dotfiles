# ANSI color escape sequences {{{
#c_RED="\033[1;31m"
#c_GREEN="\033[1;32m"
#c_YELLOW="\033[1;33m"
#c_BLUE="\033[1;34m"
#c_MAGENTA="\033[1;35m"
#c_CYAN="\033[1;36m"
#c_reset="\033[0m"
#}}}

{ [[ -z $PS1 ]] || shopt -q restricted_shell; } && return

PS1="\[\033[1;33m\]\w\[\033[0m\]\n\[\033[2;37m\]\$\[\033[0m\] "

shopt -s autocd cdspell checkwinsize cmdhist complete_fullquote direxpand dirspell \
         extglob extquote globstar histappend hostcomplete interactive_comments lithist \
         nocasematch progcomp promptvars sourcepath xpg_echo dotglob nullglob

set -o emacs

unset MAILCHECK # Don't want my shell to warn me of incoming mail.

complete -cf doas

# Disable the ability to use Ctrl + S to stop the terminal output.
# This allows you to search forwards with that same binding.
stty stop ''

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

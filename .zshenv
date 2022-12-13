# Configuring $PATH
# References ->
# https://wiki.archlinux.org/title/zsh#Configuring_$PATH
# https://zsh.sourceforge.io/Guide/zshguide02.html#l24
typeset -U path PATH
path=(~/.local/bin ~/.local/scripts $path)
export PATH
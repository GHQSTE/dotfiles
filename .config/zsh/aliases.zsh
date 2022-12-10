#!/bin/dash

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias mkdir="mkdir -p"

# ls family
alias ls="ls --color=auto"
alias l="ls -A --color=auto"
alias ll="ls -lAhp --color=auto --group-directories-first"
alias s="startx \$XDG_CONFIG_HOME\/X11\/xinitrc"
alias lsa="ls -A | wc -l"

# # Window swallowing (Dependency - dynamicswallow patch for DWM)
# alias \
#   nsxiv='dwmswallow $WINDOWID; nsxiv' \
#   zathura='dwmswallow $WINDOWID; zathura' \
#   mpv='dwmswallow $WINDOWID; mpv' \
#   ani-cli='dwmswallow $WINDOWID; ani-cli' \
#   sioyek='dwmswallow $WINDOWID; sioyek'

# Colorize commands when possible.
alias grep="grep --color=auto"
alias diff="diff --color=auto"

# Programs
alias lf="lf-ueberzug"
alias xbindkeys="xbindkeys -f \$XDG_CONFIG_HOME\/xbindkeys\/config"
alias tree="tree -Ca"
alias v="nvim"
alias fg="find ~/ -type f | fzy"
alias f="find . -type f | fzy"
alias ncmpcpp="ncmpcpp --config=~/.config/ncmpcpp/config"

# Keyboard layout
alias setus="setxkbmap us"
alias setcm="setxkbmap us -variant colemak_dh"

# Make mount command output pretty and human readable format
alias mount="mount | column -t"

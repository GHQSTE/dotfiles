#!/bin/sh

xrandr --output HDMI-0 --mode 1920x1080 --rate 120.00
setxkbmap -option ctrl:swapcaps
setxkbmap us -variant colemak_dh
xbindkeys -f $XDG_CONFIG_HOME/xbindkeys/config
xset r rate 275 65 &
xbanish &
xcompmgr &
mpd &
flameshot &
udiskie &
exec dwm

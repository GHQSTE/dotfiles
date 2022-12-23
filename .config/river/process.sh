wlr-randr --output HDMI-A-1 --mode 1920x1080@120

killall mako
mako &

killall /usr/bin/polkit-dumb-agent
/usr/bin/polkit-dumb-agent &

killall mpd
mpd &

swww init

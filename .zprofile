
[ ! -s ~/.mpd/mpd.pid ] && mpd

pidof mpdscribble >& /dev/null
if [ $? -ne 0 ]; then
     mpdscribble &
fi

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

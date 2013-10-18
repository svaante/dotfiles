setxkbmap -layout "se"
feh --bg-scale downloads/heltoff.png
xrdb -merge .xresources

(sleep 1 && urxvt -e tmux ) &
(sleep 1 && firefox ) &
unclutter &
exec dwm

#exec fvwm

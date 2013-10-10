xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xresources &
xmodmap ~/.Xmodmap &
xset r rate 170 30 &
tray &
urxvt &
# redshift -l 32.6:-117.0 -t 5700:3600 -g 0.8 &
exec xmonad

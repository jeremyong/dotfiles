PATH=$PATH:~/.cabal/bin:~/.xmonad/bin

xset +fp /usr/share/fonts/local &
xset fp rehash &
xset r rate 200 40
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &
~/.screenlayout/dual-head.sh &
xscreensaver -no-splash &
xmodmap ~/.swapkeys
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session xmonad

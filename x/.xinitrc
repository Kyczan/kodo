#!/bin/bash

# load custom theme
xrdb $HOME/.Xresources

# turn on numlock
numlockx on 

# caps lock works as escape
setxkbmap -layout pl -option caps:escape 

# set wallpaper
feh --bg-scale ~/Pictures/wallpaper.png

# run notification app
dunst -config ~/.config/dunst/dunstrc &

# for transitions
compton -f &

# lock screen on suspend
xss-lock -- lockme &

# kill status-bar and restart it
restart-dwm-status-bar

# finally run X
# exec i3
exec dwm

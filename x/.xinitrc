#!/bin/bash

# load custom theme
xrdb $HOME/.Xresources

# turn on numlock
numlockx on 

# caps lock works as escape
setxkbmap -layout pl -option caps:escape 

# set wallpaper
rm $HOME/.fehbg
hour-bg &
# feh --bg-scale $HOME/pictures/wallpaper.png &

# for transitions
compton -f &

# lock screen on suspend
xss-lock -- lockme &

# run notification handler
dunst &

# kill status-bar and restart it
# restart-dwm-status-bar

# finally run X
# exec dwm
exec bspwm


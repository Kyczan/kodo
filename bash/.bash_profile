#!/bin/sh

# Profile file. Runs on login.

export PATH="$HOME/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"
# My variables
export MY_EDITOR="code-oss"
export VISUAL="vim"
export SUDO_ASKPASS=~/bin/password

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start graphical server if i3 not already running.
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x dwm || exec startx
fi

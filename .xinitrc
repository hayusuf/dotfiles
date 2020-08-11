#!/bin/sh
#~/.xinitrc
#executed by startx

if [ -d /etc/X11/xinit/xinitrc.d ]; then
 for f in /etc/X11/xinit/xinitrc.d/*; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export EDITOR=nvim
export VISUAL=nvim
export TERMCMD=alacritty
export RANGER_LOAD_DEFAULT_RC=false

while true; do   
	~/.config/feh/.fehbg & ~/.config/polybar/launch.sh & /usr/local/bin/dwm 2> /dev/null
done


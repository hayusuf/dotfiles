#!/bin/sh
#~/.xinitrc
#executed by startx

if [ -d /etc/X11/xinit/xinitrc.d ]; then
 for f in /etc/X11/xinit/xinitrc.d/*; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export EDITOR=vim
export VISUAL=vim
export TERMCMD=alacritty
while true; do   
	~/.fehbg & /usr/local/bin/dwm 2> /dev/null
done


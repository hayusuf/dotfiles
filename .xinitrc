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
export TERMCMD=st
export RANGER_LOAD_DEFAULT_RC=false


#exec dwm and fehbg
while true; do   
	picom --config ~/.config/picom.conf & ~/.fehbg & /usr/local/bin/dwm 2> /dev/null    
done


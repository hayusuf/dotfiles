#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
export EDITOR=vim
export VISUAL=vim
export TERMCMD=kitty
export XDG_SESSION_TYPE=x11
plank &
exec openbox-session


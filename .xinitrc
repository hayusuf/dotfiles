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


dte(){
  dte="$(date +"%a, %b %d |  %l:%M%p")"
  echo -e " $dte"
}

cpu(){
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "  $cpu%cpu"
}


while true; do
     xsetroot -name "$(cpu) | IP:192.168.1.116 | $(dte)"
     sleep 10s    # Update time every ten seconds
done &


#exec dwm and fehbg
while true; do   
	#picom --config ~/.config/picom.conf & 
	~/.fehbg & /usr/local/bin/dwm 2> /dev/null    
done


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
feh --bg-center /home/yusuf/docs/bg.jpg
exec dbus-launch leftwm

#pacman base linux linux-firmware amd-ucode vim man-db ... relfector xorg-xinit efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools git cups hplip xdg-utils xdg-user-dirs alsa-utils pulseaudio inetutils base-devel linux-headers os-prober ... nvidia nvidia-utils xorg firefox kitty dmenu feh rtl88xxau-aircrack nautilus lxappearance ttf-firacode discord

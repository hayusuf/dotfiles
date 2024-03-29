#!/bin/sh

export MOZ_ENABLE_WAYLAND=1
#first time gsettings set org.gnome.desktop.interface font-name "DinaRemaster 12"
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=river

timestamp=$(date +%F-%R)
exec dbus-run-session river -log-level debug > /tmp/river-${timestamp}.log 2>&1

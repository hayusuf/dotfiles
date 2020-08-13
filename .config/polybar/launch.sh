#!/usr/bin/env zsh
# Terminate already running bar instances
killall -q polybar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar date >>/tmp/polybar1.log 2>&1 &
polybar main >>/tmp/polybar2.log 2>&1 &
polybar vol >>/tmp/polybar2.log 2>&1 &


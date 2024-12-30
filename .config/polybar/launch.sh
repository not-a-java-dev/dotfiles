#!/usr/bin/env bash
polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log
polybar -c $HOME/.config/polybar/config.ini example 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

#echo "Bars launched..."

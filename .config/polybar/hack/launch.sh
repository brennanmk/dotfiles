#!/usr/bin/env bash

# Add this script to your wm startup file.



DIR="$HOME/.config/polybar/hack"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
DIS=$(xrandr --listactivemonitors | grep 'eDP\|DisplayPort\|DP\|HDMI' | rev | cut -d ' ' -f1 | rev)
for mon in $DIS; do
	MONITOR="$mon" polybar -q top -c "$DIR"/config.ini &
done
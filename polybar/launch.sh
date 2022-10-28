#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar --config-file=$HOME/.config/polybar/config.ini main_bar 2>&1 | tee -a /tmp/polybar.log & disown
polybar --config-file=$HOME/.config/polybar/config_secondary.ini secondary_bar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."


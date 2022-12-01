#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit

# Launch bars
if [[ $(xrandr -q | grep 'LVDS-1 connected') ]]
then
	polybar laptop
else
	polybar right & polybar left
fi

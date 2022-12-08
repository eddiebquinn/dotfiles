#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit

# Launch bars
if [ $(hostname) = "ghost" ]
then
	polybar t440
elif [ $(hostname) = "two-face" ]
then
	polybar right & polybar left
fi

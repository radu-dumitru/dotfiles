#!/usr/bin/env bash

## Terminate already running bar instances
polybar-msg cmd quit
sleep 1

## Launch polybar on every connected monitor
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar my_bar &
done


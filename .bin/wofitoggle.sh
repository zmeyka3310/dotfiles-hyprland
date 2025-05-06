#!/bin/bash
if [[ "$(hyprctl activewindow | grep initialClass | awk -F ': ' '{print $2}')" == "wofi" ]]; then
  hyprctl dispatch killactive
else
  wofi
fi
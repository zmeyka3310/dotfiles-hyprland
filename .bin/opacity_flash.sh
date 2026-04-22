#!/usr/bin/env bash

# Get active window address
active_window=$(hyprctl activewindow -j | jq -r '.address // empty')
if [[ -z "$active_window" ]]; then
  echo "No active window found" >&2
  exit 1
fi

# Get current opacity (fallback to 1.0)
current_opacity=$(hyprctl getprop "window:$active_window opacity" -j 2>/dev/null | jq -r '.float // 1.0' || echo "1.0")

# Flash transparent for 0.3 seconds
hyprctl setprop "window:$active_window" opacity 0.0
sleep 0.3

# Restore original opacity
hyprctl setprop "window:$active_window" opacity "$current_opacity"

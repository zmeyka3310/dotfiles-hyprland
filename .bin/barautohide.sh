HIDDEN=true
while true; do
    sleep 0.1
    # x=$(hyprctl cursorpos | cut -d "," -f 1) #if you use a vertical bar
    y=$(hyprctl cursorpos | cut -d " " -f 2)
    if [[ $y == 0 && $HIDDEN == true ]]; then
        pkill -USR1 waybar  # Show waybar
        HIDDEN=false
    elif [[ $y -gt 300 && $HIDDEN == false ]]; then
        pkill -USR2 waybar  # Hide waybar
        HIDDEN=true
    fi
done
hyprctl hyprpaper wallpaper eDP-1,~/.config/wallpapers/style7.png
hyprctl hyprpaper wallpaper HDMI-A-1,~/.config/wallpapers/style7.png
echo 'source = ~/.config/hypr/style7.conf' > .config/hypr/preloader.conf
sed -i '19s/.*/#d3ebf7/' .config/waybar/style.css
hyprctl reload
pkill -f waybar
waybar & disown
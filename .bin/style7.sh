hyprctl hyprpaper wallpaper eDP-1,~/.config/wallpapers/style7.png
hyprctl hyprpaper wallpaper HDMI-A-1,~/.config/wallpapers/style7.png
echo 'source = ~/.config/hypr/style7.conf' > .config/hypr/preloader.conf
sed -i '19s/.*/#b62bae/' .config/waybar/style.css 
pkill -f waybar
waybar & disown
hyprctl hyprpaper wallpaper eDP-1,~/.config/wallpapers/style4.png
hyprctl hyprpaper wallpaper HDMI-A-1,~/.config/wallpapers/style4.png
echo 'source = ~/.config/hypr/style4.conf' > .config/hypr/preloader.conf
sed -i '19s/.*/#516ced/' .config/waybar/style.css
hyprctl reload
pkill -f waybar
waybar & disown
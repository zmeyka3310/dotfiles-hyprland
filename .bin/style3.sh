hyprctl hyprpaper wallpaper eDP-1,~/.config/wallpapers/style3.png
hyprctl hyprpaper wallpaper HDMI-A-1,~/.config/wallpapers/style3.png
echo 'source = ~/.config/hypr/style3.conf' > .config/hypr/preloader.conf
sed -i '19s/.*/#7ac4f1/' .config/waybar/style.css
hyprctl reload
pkill -f waybar
waybar & disown
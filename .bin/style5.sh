hyprctl hyprpaper wallpaper eDP-1,~/.config/wallpapers/style5.png
hyprctl hyprpaper wallpaper HDMI-A-1,~/.config/wallpapers/style5.png
echo 'source = ~/.config/hypr/style5.conf' > .config/hypr/preloader.conf
sed -i '19s/.*/#cccccc/' .config/waybar/style.css
hyprctl reload
pkill -f waybar
waybar & disown
hyprctl hyprpaper wallpaper eDP-1,~/.config/style2.png
echo 'source = ~/.config/hypr/style2.conf' > .config/hypr/preloader.conf
sed -i '19s/.*/#eb7e2c/' .config/waybar/style.css
hyprctl reload
pkill -f waybar
waybar & disown
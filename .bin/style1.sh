hyprctl hyprpaper wallpaper eDP-1,~/.config/wallpapers/style1.jpg
hyprctl hyprpaper wallpaper HDMI-A-1,~/.config/wallpapers/style1.jpg
echo 'source = ~/.config/hypr/style1.conf' > .config/hypr/preloader.conf
sed -i '19s/.*/#0db9d7/' .config/waybar/style.css 
pkill -f waybar
waybar & disown
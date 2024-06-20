hyprctl hyprpaper wallpaper eDP-1,~/.config/wallpapers/style6.jpg
echo 'source = ~/.config/hypr/style6.conf' > .config/hypr/preloader.conf
sed -i '19s/.*/#d3ebf7/' .config/waybar/style.css
hyprctl reload
pkill -f waybar
waybar & disown
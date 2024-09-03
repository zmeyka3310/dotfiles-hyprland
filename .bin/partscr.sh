# grim /tmp/image2.png
# hyprctl keyword animations:enabled 0
# OWS=$(hyprctl monitors | grep active | awk '{print $3}')
# hyprctl dispatch workspace 100
# pqiv -i /tmp/image2.png &
# sleep 0.1
grim -g "$(slurp -w 0 -b 00000088)" /tmp/image.png
wl-copy < /tmp/image.png 
# hyprctl dispatch workspace $OWS
# pkill -f pqiv
# rm /tmp/image2.png
# hyprctl keyword animations:enabled 1
# sleep 1
mv /tmp/image.png "$(xdg-user-dir PICTURES)/Screenshots/$(date +'Screenshot from %Y-%m-%d %H-%M-%S.png')"

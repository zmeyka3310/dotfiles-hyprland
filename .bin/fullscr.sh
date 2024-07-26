grim /tmp/image.png
wl-copy < /tmp/image.png
mv /tmp/image.png "$(xdg-user-dir PICTURES)/Screenshots/$(date +'Screenshot from %Y-%m-%d %H-%M-%S.png')"
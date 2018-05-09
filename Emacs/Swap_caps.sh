
sed -i '/XKBLAYOUT/c\XKBLAYOUT="es"' /etc/default/keyboard
sed -i '/XKBOPTIONS/c\XKBOPTIONS="ctrl:swapcaps"' /etc/default/keyboard
sudo dpkg-reconfigure -phigh console-setup

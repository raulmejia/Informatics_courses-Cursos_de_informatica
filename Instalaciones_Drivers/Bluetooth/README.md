https://wiki.debian.org/BluetoothUser 



zless /usr/share/doc/bluez/README.Debian.gz   
sudo apt-get install gnome-bluetooth  

bluetoothctl  
scan on 
pair MAC_Address
trust MAC_Address
connect MAC_Address
info MAC_Address

https://forums.linuxmint.com/viewtopic.php?t=300778
sudo apt-get install blueman  
pactl list short  
load module module-bluetooth-discover  
pactl load-module module-bluetooth-discover  
apt-get install pulseaudio-module-bluetooth  
apt-get update  
apt-get upgrade  
blueman-manager  
pactl load-module module-bluetooth-discover  
blueman-manager   

To select the output of the audio:  
apt-get install gnome-control-center

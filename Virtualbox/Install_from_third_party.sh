# This instructions are for Debian 9 (Stretch)
# Taked from https://wiki.debian.org/VirtualBox#Debian_9_.22Stretch.22
sudo su
touch /etc/apt/sources.list.d/virtualbox.list
echo deb http://download.virtualbox.org/virtualbox/debian stretch contrib >> /etc/apt/sources.list.d/virtualbox.list
apt-get install curl
curl -O https://www.virtualbox.org/download/oracle_vbox_2016.asc
apt-key add oracle_vbox_2016.asc
apt-get update
apt-get install virtualbox-5.1

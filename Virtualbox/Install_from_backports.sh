#!/bin/bash
# This instructions apply to Debian 9 "Stretch"
sudo su
echo "deb http://ftp.debian.org/debian stretch-backports main" >> /etc/apt/sources.list
apt-get update
apt-get -t stretch-backports install "virtualbox"

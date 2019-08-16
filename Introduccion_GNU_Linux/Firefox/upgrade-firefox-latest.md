https://linuxconfig.org/how-to-install-latest-firefox-browser-on-debian-9-stretch-linux


## Download in the proper way
´´´mkdir Firefox´´´  
´´´cd !$´´´
´´´wget -O FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US" ´´´   

# Extract firefox
sudo mkdir /opt/firefox
sudo tar xjf FirefoxSetup.tar.bz2 -C /opt/firefox/

# Make a backup of the first Firefox binary shipped with Debian and make a new symbolic link pointing to downloaded Firefox executable:
sudo mv /usr/lib/firefox-esr/firefox-esr /usr/lib/firefox-esr/firefox-esr_orig
ln -s /opt/firefox/firefox/firefox /usr/lib/firefox-esr/firefox-esr
sudo mkdir /usr/lib/firefox-esr/
sudo mv /opt/firefox/firefox/firefox /usr/lib/firefox-esr/firefox-esr

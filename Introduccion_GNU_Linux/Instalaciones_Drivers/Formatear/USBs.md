

# gparted or mkfs.vfat refuse to create a patition table: 
In case gparted or mkfs.vfat refuse to create a patition table: 

```dd if=/dev/zero of=/dev/da0 bs=1M count=1```

DANGER!!! /dev/da0 should be replaced by the right path [1]  
you could use mkusb from cannonical [2], but installing it in debian is not so easy [3].  






### References

[1]https://serverfault.com/questions/1133297/linux-bsd-quickly-wipe-a-usb-drive  
[2]https://help.ubuntu.com/community/mkusb  
[3] https://help.ubuntu.com/community/mkusb/install-to-debian  


Para ver en que particion esta mondata tu usb

'''
neo@nabuco:~$ df
Filesystem     1K-blocks      Used Available Use% Mounted on
/dev/sda2       47930248  10043988  35428456  23% /
udev               10240         0     10240   0% /dev
tmpfs             797312     29352    767960   4% /run
tmpfs            1993272       420   1992852   1% /dev/shm
tmpfs               5120         4      5116   1% /run/lock
tmpfs            1993272         0   1993272   0% /sys/fs/cgroup
/dev/sda5      255625740 131426588 111191024  55% /home
tmpfs             398656         8    398648   1% /run/user/121
tmpfs             398656        12    398644   1% /run/user/1000
/dev/sdb        15249856   1425696  13824160  10% /media/neo/MIUSB
'''
Desmontamos el dispositivo
'''
neo@nabuco:~$ umount /dev/sdb
'''
Lo formateamos...
'''

'''




mkfs.vfat -n data /dev/sdc1

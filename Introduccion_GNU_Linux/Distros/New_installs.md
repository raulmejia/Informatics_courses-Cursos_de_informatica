Usualmente estos programas vienen instalados en tu distribucion, si no fuera asi puedes correr:



```
sudo install dosfstools
```

Para ver en que particion esta mondata tu usb

```
df
```
Te dara aparecera en pantalla algo como lo siguiente
```
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
```
En este ejemplo formatearemos el dispositvo "MIUSB"  podemos ver que esta montado en /media/neo/MIUSB y en el sistema de archivos es /dev/sdb

Así Desmontamos el dispositivo en /dev/sdb deberás cambiarlo para tu caso particular.

```
neo@nabuco:~$ umount /dev/sdb
```

Lo formateamos... recuerda escribir correctamente la ruta (en ejemplo /dev/sdb) pero cambiará en cada caso.

```
sudo mkfs.vfat -I -F 32 -n NOMBRE_PARA_MIUSB/dev/sdb
```

Después de el argumento -n escribe el nombre que desees para tu usb, recuerda que a Windows no le gustan las minúsculas en estos casos así que escribe con mayúsculas para que no tengas este problema.

```
mkfs.vfat -n data /dev/sdc1
```

Otro comando para verlo... 
```
sudo fdisk -l
```

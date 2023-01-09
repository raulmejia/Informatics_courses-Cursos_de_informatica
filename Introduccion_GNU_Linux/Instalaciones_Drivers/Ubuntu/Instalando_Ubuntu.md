Tres pasos para acceder al instalador de Ubuntu

# 1. Prepara tu computadora:
### Respalda tu información
Altamente recomendado !!

### Configura tu BIOS 
Accede a tu BIOS y configuralo para que puedas arrancar el instalador (desde una usb ,cd o el medio que vayas a usar)

# 2. Obtén el instalador

### Descargalo de la [página oficial](https://ubuntu.com/)
### Formatea tu memoria usb

<sub> Usualmente estos programas ya vienen instalados en tu distribución , si no, ejecuta en la terminal: </sub>



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

Desmonto el dispositivo en /dev/sdb **deberás cambiarlo para tu caso particular** /dev/sxx

```
neo@nabuco:~$ sudo umount /dev/sdb
```

Formatear. **Importante!:** Recuerda escribir correctamente tu ruta (en el ejemplo /dev/sdb) pero cambiará en cada caso "/dev/sxx".

```
sudo mkfs.vfat -I -F 32 -n NOMBRE_PARA_MIUSB /dev/sdb
```

-n asigna el nombre para tu usb, <sub>recuerda que a Windows no le gustan las minúsculas en estos casos así que escribe con mayúsculas para que no tengas este problema </sub>.

-F 32 es el tipo de formato.
  
### Graba tu instalador apropiadamente en tu usb  


``` sudo dd if=/la/ruta/donde/esta_tu_archivo_iso.iso of=/dev/sdb ```

if= la ruta (path) de tu archivo .iso  
of= el destino donde quieres grabarlo (por ejemplo tu memoria usb)  

# Arranca el instalador y sigue las instrucciones

Inserta la USB y arranca desde ella en el BIOS. Sigue las instrucciones del instalador.

# 1. Prepara tu computadora:
### 1.1 Respalda tu información
Altamente recomendado !!

### 1.2 Particiona tu HDD
<sub> Sugerencia: Particiona tu HDD fuera del instalador si es que no lo está ya.</sub>  

### 1.3 Configura tu BIOS 
Accede a tu BIOS y configuralo para que puedas arrancar el instalador (desde una usb ,cd o el medio que vayas a usar)

# 2. Instalar Ubuntu

### 2.1 Descarga el instalador de la [página oficial](https://ubuntu.com/)
<sub>Recomiendo la versión LTS</sub>
### 2.2 Formatea tu memoria usb

<sub> Usualmente estos programas ya vienen instalados en tu distribución , si no, ejecuta en la terminal: </sub>



```
sudo install dosfstools
```

Para ver en que particion esta mondata tu usb

```
df -h
```
Te dara aparecera en pantalla algo como lo siguiente
```
Filesystem      Size  Used Avail Use% Mounted on
udev            9.5G     0  9.5G   0% /dev
tmpfs           1.9G  1.8M  1.9G   1% /run
/dev/sda2        74G   32G   39G  45% /
tmpfs           9.5G  111M  9.4G   2% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
/dev/sda5        92G   68G   20G  78% /home
tmpfs           1.9G  572K  1.9G   1% /run/user/1000
/dev/sdb        932G  634G  298G  69% /media/rmejia/HDD_externo
/dev/sdc         29G   16K   29G   1% /media/rmejia/MIUSB
```
En este ejemplo formatearemos el dispositvo "MIUSB"  podemos ver que esta montado en /media/neo/MIUSB y en el sistema de archivos es /dev/sdc

Desmonto el dispositivo en /dev/sdc **deberás cambiarlo para tu caso particular** /dev/sxx. <sub>Si lo confundes por /dev/sdb desmontaras el HDD externo! </sub>


```
neo@nabuco:~$ sudo umount /dev/sdc
```

Formatear. **Importante!:** Recuerda escribir correctamente tu ruta (en el ejemplo /dev/sdb) pero cambiará en cada caso "/dev/sxx". <sub> Si lo confundo por/dev/sdc formarearía el HDD externo! X.X. Para minimizar el riesgo de formateos erróneaos puedes desconectar todos los demás que no estés usando para</sub>

```
sudo mkfs.vfat -I -F 32 -n NOMBRE_PARA_MIUSB /dev/sdc
```

-n asigna el nombre para tu usb, <sub>recuerda que a Windows no le gustan las minúsculas en estos casos así que escribe con mayúsculas para que no tengas este problema </sub>.

-F 32 es el tipo de formato.
  
### 2.2 Graba tu instalador apropiadamente en tu usb  


``` sudo dd if=/la/ruta/donde/esta_tu_archivo_iso.iso of=/dev/sdc ```

if= la ruta (path) de tu archivo .iso  
of= el destino donde quieres grabarlo (por ejemplo tu memoria usb)  

### 2.3 Arranca el instalador y sigue las instrucciones

Inserta la USB y arranca desde ella en el BIOS. Sigue las instrucciones del instalador.

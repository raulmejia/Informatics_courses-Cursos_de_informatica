#Guía para instalar Debian 8.1 en computadoras Mac G5.

##Obtener disco de arranque para power pc compatible con Mac G5

http://cdimage.debian.org/debian-cd/8.2.0/powerpc/iso-cd/

## Ingresar al OpenFirmware de Mac
Mediante la siguiente combinacion de teclas:
~~~
		Cmd+alt+o+f
~~~

## Una vez detro del OpenFirmware instalamos yaboot 
      boot cd:,\install\yaboot

## Ahora instalamos el sistema operativo Debian 8.1 de 64 bits mediante el comando:
       install

### A continuación nos manda al menú de instalación de Debian 
Procedemos con la selección de parámetros para la configuracióon de nuestro futuro S.O. (idioma, teclado, etc...) 
Sugerencia: Si sabemos hacer la instalación manual, hagamos que la carpeta root "/" tenga más de 15GB de Espacio (Esto
sólo es una sugerencia ya que si instalamos muchos muchos programas, esta partición puede saturarse en un futuro. 
Si desconocemos como hacerlo podemos proceder por la partición "guiada"/automática.

Procedemos a revisar si tenemos conexión a internet, lo cual lo podemos hacer mediante los comandos:
1. ping ip_de_una_computadora_conocida
2. ifup eth0
3. /etc/init.d/networking start

Nota: (Revisar si el cable físicamente esta conectado al puerto 0 o 1)

una vez teniendo conexión a internet, tal vez será necesario establecer un proxy, para ello podemos usar el comando:
~~~
export http_proxy=http://192.168.105.78:8888
~~~

Revisa tus repositorios, y cerciorate que al menos incluya el manin contrib y man de tu distribución:
deb tu_mirror_favorito/debian jessie main contrib
deb-src tu_mirror_favorito/debian jessie main

~~~
sudo apt-get update
~~~

~~~
sudo apt-get install screen
~~~

~~~
sudo apt-get install apt-file 
~~~
~~~
apt-file update
~~~
~~~
apt-get install xinit xfce4
~~~
Usalmente el antiguo controlador nouveau da problemas: 

~~~
W: Posble missing firmware /lib/firmware/tigon/tg3-tso5.bin for module tg3
~~~
~~~
W: Posble missing firmware /lib/firmware/tigon/tg3_tso.bin for module tg3
~~~
~~~
W: Posble missing firmware /lib/firmware/tigon/tg3.bin for module tg3
nouveau E[Xorg[21366]] failed to idle channel 0xcccc0001 [Xorg[21366]]
~~~

## Eliminamos la libreria nouveau (Controlador de NVIDIA GEFORCE )
~~~
apt-cache search nouveau
~~~
~~~
apt-get remove --purge  xserver-xorg-video-nouveau
~~~
Nota: Nunca usar el startx desde root
Desde nuestro usuario corremos el comando

~~~
startx 
~~~

##Instalamos el programa arandr para configurar ambos monitores.

~~~
apt-get install arandr
~~~

## Instalamos un display manager para tener entorno gráfico desde el "loggin"

~~~
apt-cache search display manager
~~~
~~~
apt-cache search display manager |  grep manager
~~~

Para ver la informacion de un paquete interesante.

~~~    
apt-cache show paquete_interesante 
~~~

De todos los display manager elegimos alguno y lo instalamos, por ejemplo lightdm puede ser una opción.

~~~
apt-get install lightdm
~~~


archivos de configuracion para la red /etc/resolvconf.d  (ahi resolvimos el domain/host)

/etc/network/interfaces
ifup eth0
ifdown eth1
ifconfig
ping


# Actualizar Libre Office a la versión más reciente 
### (Aplica para Debian y distribuciones GNU/Linux similares)

A continuación te decimos los pasos para actualizar a la versión más reciente de Libre Office. Hay varias maneras de hacerlo, nosotros lo haremos a través de la terminal.  Por favor abre una terminal (Si no conoces como hacerlo, te lo decimos al final de esta página). 

1. Una vez dentro de la terminal, abrimos el archivo de tu computadora llamado "/etc/apt/sources.list" (éste contiene las direcciones web desde las cuales tu computadora descarga sus actualizaciones)
para ello escribimos el siguiente comando dentro de la terminal:  
```sudo nano /etc/apt/sources.list```

      Debido a que invocaste el comando "sudo" la terminal te pedirá la contraseña de administrador (super usuario), ingresala por favor.

2. Dentro de nano pega las siguientes líneas:  
```deb http://ftp.fr.debian.org/debian jessie-backports main contrib non-free```  
```deb-src http://ftp.fr.debian.org/debian jessie-backports main contrib non-free```  

3. Guardamos los cambios hechos en nano presionando las teclas Ctrl+o , luego aceptamos presionando la tecla  Enter, por último salimos de nano presionando las teclas Ctrl+x.

4. Para que surtan efecto los cambios actualizamos los repositorios con: ```sudo apt-get update```

5. Instalamos la última versión de Libre office desde backports, escribiendo lo siguiente en la terminal:  
```sudo apt-get -t jessie-backports install libreoffice```


6. Para finalizar la actualización y eliminar paquetes obsoletos escribimos en la terminal:  
```sudo apt-get upgrade```

# Instalar el idioma español en Libre Office

7. Para instalar el idioma español en libre office:  
```sudo apt-get install -t jessie-backports libreoffice-l10n-es libreoffice-help-es```

Listo, ahora podemos cerrar la terminal.

----

### Dudas
¿Cómo abrir una terminal? (Eso depende del entorno de escritorio que estes utilizando, puedes intentar alguna de las siguientes opciones):  
* Busca en el escritorio un ícono en forma de cuadrito con el interior obscuro y da clic sobre él.
*  ve al menú de aplicaciones de tu entorno de escritorio y busca algo que diga "terminal", "terminator" o similar.
*  Si usas gnome puedes usar la combinación de teclas Ctrl+alt+t
* Aquí un vídeo de [como abrir una terminal en ubuntu](https://www.youtube.com/watch?v=atn7Ewp6tu8)
### Referencias 
(Debian.org)[https://wiki.debian.org/LibreOffice]

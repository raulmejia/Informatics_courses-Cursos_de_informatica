A continuación te decimos los pasos para actualizar a la versión más reciente de Libre Office:

Hay varias maneras de hacerlo, nosotros lo haremos a través de la terminal.  Por favor abre una terminal. ¿Cómo abrir una terminal?  

1.- Una vez dentro de la terminal, abrimos el archivo de tu computadora llamado "/etc/apt/sources.list" (éste contiene las direcciones web desde las cuales tu computadora descarga sus actualizaciones):
Para ello escribimos el siguiente comando dentro de la terminal  
´´´sudo nano /etc/apt/sources.list´´´

La computadora te pedirá la contraseña de administrador(sudo = super usuario)

Dentro de nano pega las siguientes líneas.

2.-  deb http://ftp.fr.debian.org/debian jessie-backports main contrib non-free
deb-src http://ftp.fr.debian.org/debian jessie-backports main contrib non-free

Guarda los cambios presionando las teclas: Ctrl+o
A continuacón aceptamos presionando la tecla:  Enter
Salimos de nano presionando las teclas: Ctrl+x

3.- Para que surtan efecto los cambios actualizamos los repositorios con: ´´´sudo apt-get update´´´

4.- Instalamos la última versión de Libre office desde backports: ´´´sudo apt-get -t jessie-backports install libreoffice´´´
(Referencias)[https://wiki.debian.org/LibreOffice]

5.- Para finalizar la actualización y eliminar paquetes obsoletos escribimos en la terminal: ´´´sudo apt-get upgrade ´´´

6.- Para instalar el idioma español en libre office: ´´´sudo apt-get install -t jessie-backports libreoffice-l10n-es libreoffice-help-es´´´

Listo ahora podemos cerrar la terminal

##

Aquí podemos ver un video de como hacerlo con un método un poco diferente.

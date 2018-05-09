
#!/bin/bash
# Este programa intercambia la tecla Mayúsculas por control (ambas del lado izquierdo del teclado) y establece el teclado "es"
sed -i '/XKBLAYOUT/c\XKBLAYOUT="es"' /etc/default/keyboard
sed -i '/XKBOPTIONS/c\XKBOPTIONS="ctrl:swapcaps"' /etc/default/keyboard
sudo dpkg-reconfigure -phigh console-setup
# ahora sòlo falta reiniciar la computadora

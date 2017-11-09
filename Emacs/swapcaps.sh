#!/bin/bash
# Este programa intercambia la tecla Mayúsculas por control (ambas del lado izquierdo del teclado)
sed -i 's/XKBOPTIONS=""/XKBOPTIONS="ctrl:swapcaps"/g' /etc/default/keyboard
dpkg-reconfigure -phigh console-setup
# Ahora sólo falta reiniciar la computadora

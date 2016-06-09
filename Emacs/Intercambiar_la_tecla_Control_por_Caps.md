
Tal como lo describe la [siguiente página](https://www.emacswiki.org/emacs/MovingTheCtrlKey#toc9) , Puedes Intercambiar la tecla "Control" de la izquierda por la de Mayúsculas mediante los siguientes pasos:

1. Edita el archivo /etc/default/keyboard cambia la línea que dice:   
```  XKBOPTIONS="" ```
2. Por:  
```XKBOPTIONS="ctrl:swapcaps"```  

3. Luego ejecuta el comando
```sudo dpkg-reconfigure -phigh console-setup```
4. reinicia la computadora y listo!

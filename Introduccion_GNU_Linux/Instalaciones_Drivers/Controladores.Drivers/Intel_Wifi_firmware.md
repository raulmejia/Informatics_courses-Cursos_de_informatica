###Solución a la conectividad a internet con controladores wifi Intel® Centrino® Wireless-N 130


**Nota: Esta misma receta funciona para el resto de controladores y firmware de Intel listados en la siguiente [dirección web](https://www-ssl.intel.com/content/www/us/en/support/network-and-i-o/wireless-networking/000005511.html)**  


No podía usar el internet en una nueva instalación de Ubuntu 16.04 sobre una Samsung NP300V4A me detectaba redes pero no podía conectarme
la solución fue ver mi tipo de tarjeta wifi
mediante el comando en la terminal:  
```lspci -knn | grep Net -A2 ```  
Note que mi controlador era:  
```Intel® Centrino® Wireless-N 130```  
Así que busqué en la página de [Intel el firmware](https://www-ssl.intel.com/content/www/us/en/support/network-and-i-o/wireless-networking/000005511.html)
correspondiente a mi sistema operativo, esto último lo ví con el comando:  
```uname -a ```



Una vez descargado el archivo apropiado, lo descomprimí y lo copie a la carpeta ```/lib/firmware```

reinicíe la máquina y listo!

Pd: Por supuesto una vez teniendo conexión a internet actualicé mi computadora mediante los siguientes comandos:  
```sudo apt-get update```  
```sudo apt-get upgrade```  

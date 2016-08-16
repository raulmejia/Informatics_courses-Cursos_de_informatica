#Descripción del problema
Podía hacer ping a IP por ejemplo ```ping 8.8.8.8``` pero no a su dirección correspondiente por ejemplo ``` ping www.google.com```   
Muy probablemente era un error referente a los DNS.  
PD: Además mi /etc/apt/sources.list estaba vacío

# Solución

sudo nano /etc/resolv.conf  
eliminamos el ip de notron y colocamos el 10.0.1.224
nmcli con
dentro de esta cosa vimos el "help" "printall" o algo así, removimos el aterior (el de notron) y añadimos el nuevo.  
nmcli con edit id "Wired connection 1"  
sudo apt-get update

## Una vez resuelto el problema de los DNS...

Reinstale apt ```sudo apt-get install --reinstall apt```
Hay un archivo de ejemplo de repositorios en ```less /usr/share/doc/apt/examples/sources.list```  
Tambien me guíe en la página para sugerir repos de debian automaticamente: https://debgen.simplylinux.ch/  

y listo!

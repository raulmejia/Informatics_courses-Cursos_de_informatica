Para instalar R en ubuntu 14.04 recomiendo que uses este repositorio (para estar actualizado)
```
sudo nano /etc/apt/sources.list
```
  Añade un "mirror" por ejemplo: 
```
deb http://cran.rstudio.com/bin/linux/ubuntu trusty/
```
  Agrega una "APT-key" (llave APT) 
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 (see cran)
```
  Actualiza los repositorios
```
sudo apt-get update
```
  Instala R 
```
sudo apt-get install r-base
```

Dentro de R podemos instalar la librería "devtools"
```
install.packages("devtools")
```

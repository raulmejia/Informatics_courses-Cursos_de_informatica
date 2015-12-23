Para instalar R en ubuntu 14.04 recomiendo que uses este repositorio (para estar actualizado)
```
sudo nano /etc/apt/sources.list
```
  Add a cran mirror (i.e. 
```
deb http://cran.rstudio.com/bin/linux/ubuntu trusty/
```
  Add an APT-key 
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 (see cran)
```
  Actualiza los repositorios
```
sudo apt-get update
```
  Now update R 
```
sudo apt-get install r-base

```

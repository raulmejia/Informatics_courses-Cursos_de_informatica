## Para instalar la versión más reciente de R y dispobibilidad de sus actualizaciones.



A continuación un breve resumen en español:
Puedes encontrar las referencias completas en:  [este link para ubuntu](https://cran.r-project.org/bin/linux/ubuntu/README)

1. Abre el archivo donde tienes los repositorios de tu sistema, mediante el comando ``` sudo nano /etc/apt/sources.list  ``` o ``` sudo gedit /etc/apt/sources.list  ```.
  * Nota: Puede ser con cualquier editor de texto plano, sólo sugiero gedit por ser gráfico y básico, si no tienes instalado aún gedit puedes hacerlo con ```sudo apt-get install gedit ```

2. Agregaras una línea nueva para tu repositorio de R, la cual debe verse como:
  * Si tu sistema es Ubuntu 16.04 (Xenial Xerus):   ```deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu xenial/```
  * Si tu sistema es Ubuntu 14.04 (Trusty Tahr):  ``` deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu trusty/ ```
 

3. Sustituye ```https://<my.favorite.cran.mirror>```  por tu dirección favorita de la lista de [mirrors](https://cran.r-project.org/mirrors.html)
Por ejemplo en mi caso  (México)  el repositorio que elegí fue 
``` deb https://cran.itam.mx/bin/linux/ubuntu xenial/```

4. Añade esa línea a tu archivo /etc/apt/sources.list y salva los cambios (para eso fue que usamos sudo en el punto 1).

5. Añade tu la llave GPG del repositorio, una opción es usar el comando ```  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9```

6. Actualiza tus repositorios ```sudo apt-get update```

7. Instala R  ``` sudo apt-get install r-base```   
```  sudo apt-get install r-base-dev ```

Listo!


En la [liga inicial](https://cran.r-project.org/bin/linux/ubuntu/README) viene información adicional sobre el mantenimiento del software (actualizaciones).


---

#### Por último: te sugiero que instales las siguientes dependencias, las cuales son necesarias para muchos paquetes de R. 


1. Abre una terminal y teclea: ```sudo apt-get install libcurl4-openssl-dev libxml2-dev ```
2. Ahora puedes instalar dentro de R XML y RCurl mediante: ``` install.packages("XML") ``` y ``` install.packages("RCurl") ```
3.  Este ``` sudo apt-get install libssl-dev ``` para que puedas instalar ``` source("http://bioconductor.org/biocLite.R")```   ``` biocLite("devtools") ```
4. Listo!
[Referencias](https://stackoverflow.com/questions/10965755/genomicfeatures-package-installation-trouble)




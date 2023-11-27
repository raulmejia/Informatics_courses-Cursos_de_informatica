## Para instalar la versión más reciente de R y dispobibilidad de sus actualizaciones.


## Debian 12 (Bookworm)

A continuación un breve resumen:
Puedes encontrar las referencias completas en:  [este link para Debian](https://cran.r-project.org/bin/linux/debian/)  

0. Prerequisitos instalar el paquete permite manejar https a apt:   
```sudo apt-get install apt-transport-https```

1. Abre el archivo donde tienes los repositorios de tu sistema, mediante el comando ``` sudo nano /etc/apt/sources.list  ``` o ``` sudo gedit /etc/apt/sources.list  ``` el que prefieras.

2. Si tu sistema es Debian 11 (Bullseye) Entonces la línea para tu repositorio de R puede verse como:  ```deb http://<favourite-cran-mirror>/bin/linux/debian bookworm-cran40/```
 
3. Sustituye ```<favourite-cran-mirror>```  por tu dirección favorita de la lista de [mirrors](https://cran.r-project.org/mirrors.html)
Por ejemplo en mi caso (Debian 12 Bookworm) el repositorio que elegí fue: 
```deb http://cloud.r-project.org/bin/linux/debian bookworm-cran40/```

4. Añade esa línea a tu archivo /etc/apt/sources.list y salva los cambios (para eso fue que usamos sudo en el punto 1).

5. Para que no te aparezca la leyenda "No se pudo verificar la confiabilidad de este repositorio" o algo así,  Añade la llave GPG del repositorio, una opción es usar el comando 

```sudo apt-get install dirmngr```   

```gpg --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'```   

```gpg --armor --export '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7' | sudo tee /etc/apt/trusted.gpg.d/cran_debian_key.asc```    

```gpg --armor --export '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7' | \
    sudo tee /etc/apt/trusted.gpg.d/cran_debian_key.asc```

6. Actualiza tus repositorios ```sudo apt-get update```  

7. Instala R  
```sudo apt install -t bookworm-cran40 r-base```   






## Debian 11 (Bullseye)

A continuación un breve resumen:
Puedes encontrar las referencias completas en:  [este link para Debian](https://cran.r-project.org/bin/linux/debian/)  

0. Prerequisitos instalar el paquete permite manejar https a apt:   
```sudo apt-get install apt-transport-https```

1. Abre el archivo donde tienes los repositorios de tu sistema, mediante el comando ``` sudo nano /etc/apt/sources.list  ``` o ``` sudo gedit /etc/apt/sources.list  ``` el que prefieras.

2. Si tu sistema es Debian 11 (Bullseye) Entonces la línea para tu repositorio de R puede verse como:  ```deb http://<favourite-cran-mirror>/bin/linux/debian buster-cran40/```
 
3. Sustituye ```<favourite-cran-mirror>```  por tu dirección favorita de la lista de [mirrors](https://cran.r-project.org/mirrors.html)
Por ejemplo en mi caso (Debian 10 Buster) el repositorio que elegí fue: 
```deb http://cloud.r-project.org/bin/linux/debian bullseye-cran40/```

4. Añade esa línea a tu archivo /etc/apt/sources.list y salva los cambios (para eso fue que usamos sudo en el punto 1).

5. Para que no te aparezca la leyenda "No se pudo verificar la confiabilidad de este repositorio" o algo así,  Añade la llave GPG del repositorio, una opción es usar el comando 

```sudo apt-get install dirmngr```   

```apt-key adv --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'```  

6. Actualiza tus repositorios ```sudo apt-get update```  

7. Instala R  
```apt install -t bullseye-cran40 r-base```   



## Debian 10 (Buster)

A continuación un breve resumen:
Puedes encontrar las referencias completas en:  [este link para Debian](https://cran.r-project.org/bin/linux/debian/)  

0. Prerequisitos instalar el paquete permite manejar https a apt:   
```sudo apt-get install apt-transport-https```

1. Abre el archivo donde tienes los repositorios de tu sistema, mediante el comando ``` sudo nano /etc/apt/sources.list  ``` o ``` sudo gedit /etc/apt/sources.list  ``` el que prefieras.

2. Si tu sistema es Debian 10 (Buster) Entonces la línea para tu repositorio de R puede verse como:  ```deb http://<favourite-cran-mirror>/bin/linux/debian buster-cran40/```
 
3. Sustituye ```<favourite-cran-mirror>```  por tu dirección favorita de la lista de [mirrors](https://cran.r-project.org/mirrors.html)
Por ejemplo en mi caso (Debian 10 Buster) el repositorio que elegí fue: 
```deb https://cran.uni-muenster.de/bin/linux/debian buster-cran40/```

4. Añade esa línea a tu archivo /etc/apt/sources.list y salva los cambios (para eso fue que usamos sudo en el punto 1).

5. Para que no te aparezca la leyenda "No se pudo verificar la confiabilidad de este repositorio" o algo así,  Añade la llave GPG del repositorio, una opción es usar el comando 

```sudo apt-get install dirmngr```   
```apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'```

6. Actualiza tus repositorios ```sudo apt-get update```

7. Instala R  
``` sudo apt-get install -t buster-cran40 r-base r-base-dev```   



## Debian 9 (Stretch)

A continuación un breve resumen:
Puedes encontrar las referencias completas en:  [este link para Debian](https://cran.r-project.org/bin/linux/debian/)  

0. Prerequisitos instalar el paquete permite manejar https a apt:   
```sudo apt-get install apt-transport-https```

1. Abre el archivo donde tienes los repositorios de tu sistema, mediante el comando ``` sudo nano /etc/apt/sources.list  ``` o ``` sudo gedit /etc/apt/sources.list  ``` el que prefieras.

2. Si tu sistema es Debian 9 (stretch) Entonces la línea para tu repositorio de R puede verse como:  ```deb http://<favourite-cran-mirror>/bin/linux/debian stretch-cran40/```
 
3. Sustituye ```<favourite-cran-mirror>```  por tu dirección favorita de la lista de [mirrors](https://cran.r-project.org/mirrors.html)
Por ejemplo en mi caso (Debian 9 Stretch) el repositorio que elegí fue: 
```deb https://cran.itam.mx/bin/linux/debian stretch-cran40/```

4. Añade esa línea a tu archivo /etc/apt/sources.list y salva los cambios (para eso fue que usamos sudo en el punto 1).

5. Para que no te aparezca la leyenda "No se pudo verificar la confiabilidad de este repositorio" o algo así,  Añade la llave GPG del repositorio, una opción es usar el comando 

```sudo apt-get install dirmngr```   
```apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'```   

6. Actualiza tus repositorios ```sudo apt-get update```

7. Instala R  
``` sudo apt-get install -t stretch-cran35 r-base r-base-dev```   


## Debian 8 (Jessie)

A continuación un breve resumen en español:
Puedes encontrar las referencias completas en:  [este link para Debian](https://cran.r-project.org/bin/linux/debian/)

1. Abre el archivo donde tienes los repositorios de tu sistema, mediante el comando ``` sudo nano /etc/apt/sources.list  ``` o ``` sudo gedit /etc/apt/sources.list  ``` el que prefieras.

2. Si tu sistema es Debian 7 (Wheezy) Entonces la línea para tu repositorio de R puede verse como:  ```deb <favourite-cran-mirror>/bin/linux/debian wheezy-cran3/```
  

3. Sustituye ```<favourite-cran-mirror>```  por tu dirección favorita de la lista de [mirrors](https://cran.r-project.org/mirrors.html)
Por ejemplo en mi caso (Debian 8 Jessie) el repositorio que elegí fue: 
```deb https://cran.itam.mx/bin/linux/debian jessie-cran3/```

4. Añade esa línea a tu archivo /etc/apt/sources.list y salva los cambios (para eso fue que usamos sudo en el punto 1).

5. Para que no te aparezca la leyenda "No se pudo verificar la confiabilidad de este repositorio" o algo así,  Añade la llave GPG del repositorio, una opción es usar el comando ```sudo apt-key adv --keyserver keys.gnupg.net --recv-key 381BA480```

6. Actualiza tus repositorios ```sudo apt-get update```

7. Instala R  ``` sudo apt-get install r-base```   
```  sudo apt-get install r-base-dev ```

Listo!


---

#### Por último: te sugiero que instales las siguientes dependencias, las cuales son necesarias para muchos paquetes de R. 


1. Abre una terminal y teclea: ```sudo apt-get install libcurl4-openssl-dev libxml2-dev ```
2. Ahora puedes instalar dentro de R XML y RCurl mediante: ``` install.packages("XML") ``` y ``` install.packages("RCurl") ```
3. Este para aumentar el poder en operaciones algebraicas ``` apt-get install libatlas3-base ```  o ``` apt-get install libopenblas-base ```
4. Este ``` sudo apt-get install libssl-dev ``` para que puedas instalar ``` source("http://bioconductor.org/biocLite.R")```   ``` biocLite("devtools") ```
3. Listo!
[Referencias](https://stackoverflow.com/questions/10965755/genomicfeatures-package-installation-trouble)




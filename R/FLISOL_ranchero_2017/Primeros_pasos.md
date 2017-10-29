### ¿Por qué usar R?

1. Legalmente Gratuito
2. Código Abierto
3. Software libre
4. Software de alta calidad (código abierto, estrictos criterios de inclusión de paquetes y documentación).
5. Modelo de desarrollo permite la colaboración de desarrolladores expertos al rededor del mundo. 
6. [Amplia adopción](http://r4stats.com/articles/popularity/).
7. Gran cantidad de software (paquetes) ya escritos en este lenguaje, y por lo tanto extensas funcionalidades.
8. Como se ha convertido en un estádar, fácilmente se consigue documetación (libros, recursos en línea).
9. fácilmente automatizable.
10. Herramientas que propician la reproducibilidad. 

### ¿Cómo obtener R? 
* Descargarlo manualmente (página oficial) https://cran.r-project.org/
* Descargarlo de los repositorios mediante la terminal. 
* Seguir las instrucciones de la página llamada README.md detro de [ésta misma carpeta de github](https://github.com/raulmejia/Cursos/blob/master/R/Instalar_R)

### Interface de Rstudio

##### Estructura de un comando.

##### Navegar por el sistema de archivos.

 * `getwd()` ¿Dónde estoy?
 * `dir()` ¿Qué hay aqui?
 * `setwd()` Para cambiar de directorio de trabajo (si usas Windows, al indicar la ruta debes usar slash "/" en lugar de backslash "\" )
 * `sessionInfo()` Información de la sesión
 

##### Consultar ayuda "preincluida"
* Accesamos a esta ayuda anteponiendo el signo "?" a nuestro comando `?comando`, por ejemplo para el comando "dir()"
  `?dir `
* Comandos y argumentos `quit()`; `q()` ; `q("no")`  


# Manos  a la obra!


#### Definir algunas estructuras básicas:
  1. "mode" de objetos: (numeric,logical,character)
  2. Vectores 
     * Deben tener el "mismo mode" `mode(a)`
     * `a<-c(11,12,13,14)` 
     * `d<-11:19`
     * `b<-seq(0,10,3)`
     * `c<-c("naranja","sandia","uva","tuna")`
     * `e<-c("3","2","1")`
     * ejercicios: Crear una secuencia con "pasos" diferentes de 1, unir dos vectores uno déspues del otro, unir dos vectores intercalando sus entradas, ¿Qué pasa si unes un vector númerico con uno de caracteres?¿Cómo transformo un vector númerico en uno de caracteres?.
     * ¿Como extraigo un elemento de un vector?¿Por posición, por nombre?
    
  3. Matrices `m1<-matrix(11:26,nrow=4,ncol=4)`
    * *Ejercicio* usando la ayuda ? hacer que la matriz se construya según la secuencia de renglones.
    * `colnames(m1)<-c`
    * `rownames(m1)<-c`
  4. DataFrame `d.f<-data.frame(c,a,b)`
    * *Ejercicio*  Convertir la matriz anterior en un data frame
  5. Listas `milista<-list(c,d,m1,d.f)`
* `class()`
* `mode()`
* `length()`
* `dim`
* `str()`

### Operaciones aritméticas básicas con objetos
* Primero ¿Qué objetos tengo?`ls()`
* vector por un escalar`d2<-d*2`
* multiplicación, suma, división entrada a entrada `a*b` ; `m1+m1`;
* multiplicación estandar de matrices  `m1 %*% m1`
 

#### Substring
* `a[2]`
* `m1[3,3]`;`m1[3,]`; `rownames(m1)<-c`;`m1["uva",]`
* *Ejercicio* multiplicar la columa tres de nuestra matriz m1 con un vector númerico de igual longitud
* `d.f$d`;`d.f["1","d"]`;`d.f[2,3]`
* `class(milista[4])`;`class(milista[[4]])`;`class(d.f[1])`,`d.f[[1]]` 
* `milista[[4]]$d == d.f$d` 

#### otras operaciones básicas
* `c(a,e)`
* `is.numeric(e)`  
* `as.numeric(e)` 
* `f<-append(e,NA)`,`is.na(f)`
* `rm(e)`
* `append(c,"maracuya")`
* `c[6]<-"frambuesa"`


## Manejo de datos

#### Datos de juguete preincluidos [datos preincluidos](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html).
* `data(Seatbelts)` Accidentes automovilísticos en Reino Unido [1969-1984](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/UKDriverDeaths.html)

#### Cargar datos de un archivo .csv , .txt

Podemos usar los datos dentro de esta misma carpeta de github llamados " Datos_para_ensayar.md "
los guardamos como texto plano (un ".txt")  y para leerlos en R podemos y usar:    
* `read.table(file="Como_se_llame_mi_archivo.txt")`
 
#### Comunicación con el shell

`system("ls")`

## Crear mis datos de trabajo


Recuerda eliminar los espacios en blanco en tu archivo en texto plano

* Datos a mano


`0,0,1,3,1,2,4,7,8,3,3,3,10,5,7,4,7,7,12,18,6,13,11,11,7,7,4,6,8,8,4,4,5,7,3,4,2,3,0,0`

`0,1,2,1,2,1,3,2,2,6,10,11,5,9,4,4,7,16,8,6,18,4,12,5,12,7,11,5,11,3,3,5,4,4,5,5,1,1,0,1`

`0,1,1,3,3,2,6,2,5,9,5,7,4,5,4,15,5,11,9,10,19,14,12,17,7,12,11,7,4,2,10,5,4,2,2,3,2,2,1,1`

`0.1,0.4,0.7,1,1.3,1.6,1.9,2.2,2.5,2.8,3.1,3.4,3.7,4,4.3,4.6,4.9,5.2,5.5,5.8,6.1,6.4,6.7,7,7.3,7.6,7.9,8.2,8.5,8.8,9.1,9.4,9.7,10,10.3,10.6,10.9,11.2,11.5,11.8,`

`0,1,1,3,3,1,3,5,2,4,4,7,6,5,3,10,8,10,6,17,9,14,9,7,13,9,12,6,7,7,9,6,3,2,2,4,2,0,1,1`  

Recuerda que si usas windows debes guardar el archivo en texto plano con la extension .csv y terminar el archivo con enter.
Y a cuando deses leerlo Usar "slash" sencillo (/) para especificar la ruta.

`DatosInfla<-read.csv(file = "Practica_R_Inflamacion.csv", header = FALSE)`  
`str()`, `head()`,`tail()`,`table()`,`summary()`,`table(pdata$age,useNA="ifany")`,`is.na()`,`dim()` ,`table()`,`summary()`,`max(),min(),mean(),sd()`    

Demosle nombres a renglones y columnas  
`colnames(DatosInfla)<-paste0(c("dia"),1:40)`  
`rownames(DatosInfla)<-paste0(c("paciente"),1:5)`  


Crear una matriz de 5X20  
Obtener el promedio de inflamación del segundo dia  
Ahora la desviación éstandar  
Graficar los datos del día 2  
Obtener el promedio de todos los pacientes y de todos los días  
rowMean(), colMean(), colSum()  
`apply()`  
Gráfico de cajas
`boxplot()`
Poner colores  
Guardar pdf de la gráfica
Guardar el objeto actual y cargarlo luego

### Mi primer funcion.

Promedio


### Heatmap

Personalizar los colores

`tropical=  c('darkorange', 'dodgerblue', 'hotpink', 'limegreen', 'yellow')`  
`palette(tropical)`  

Librerias 
 `install.packages("")`
  `library(devtools)`  
  `library(Biobase)`  
  `library(dendextend)`  

`colramp = colorRampPalette(c(3,"white",2))(9)`  
`heatmap(t(DatosInfla),col=colramp,Colv=NA,Rowv=NA)`  
`heatmap(t(iris[,1:4]),Colv=NA,Rowv=NA)`  

#### clustering

`dist1=dist(m1)`  
`mihclust=hclust(dist1)`  
`plot(mihclust)`  



####  Guardar
1. salvar sesión `save.image(file="nombredeseado.RData")`
2. salvar objetos específicos `save(x,y,file="nombredeseado.RData")`
3. `write.table(x,file="mitabla.txt") / write.csv`
4. `pdf(file="nombredemiarchivo.pdf")`
5. Le indicamos donde se cierra el pdf  con: `dev.off()`
* `codigo para graficar`
* `dev.off()` para concluir y guardar la imagen.


## Haz tu Script ninja!

## ¿Cómo obtener ayuda?
* Manual pre-incluido
* Googlear
* Ver el código
* Preguntar inteligentemente

####
#Referencias:
* http://swcarpentry.github.io/r-novice-inflammation/
* https://es.coursera.org/course/rprog
* https://cran.r-project.org/
http://stackoverflow.com/questions/6853204/plotting-multiple-curves-same-graph-and-same-scale


Nota agregar ejercicio donde se cargen los datos de un .dbf que es lo que usan ellos foxpro
Hablarles de como pasar comandos de shell desde la teminal de R
HAcer a mano los datos de USAccDeaths  y los datos de cars... para tener redundancia a la hora de cargarlos
Ejercicio. con datos aleatorios con rnorm
setwd("c:/docs/mydir")  # note / instead of \ in windows
setwd("/usr/rob/mydir") # on linux

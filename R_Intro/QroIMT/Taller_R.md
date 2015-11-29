### ¿Por qué usar R?
1. Software de alta calidad, libre y gratuito en el que colaboran expertos internacionales.
2. Amplia adopción en el [ámbito científico](http://r4stats.com/articles/popularity/).
3. Gran cantidad de software (paquetes) ya escritos en este lenguaje, y por lo tanto extensas funcionalidades.
4. Como se ha convertido en un estádar, fácilmente se consiguen libros y documetación.
5. Procedimientos repetitivos pueden ser fácilmente automatizados.
6. Herramientas que propician la para reproducibilidad. 

### ¿Cómo obtener R? 
* (página oficial) https://cran.r-project.org/
* Seguir las instrucciones de la página llamada README.md detro de ésta misma carpeta "QroIMT".

### Interface de Rstudio
##### Navegar por el sistema de archivos.

 * `getwd()` ¿Dónde estoy?
 * `dir()` ¿Qué hay aqui?
 * `setwd()` Para cambiar de directorio de trabajo (si usas Windows, al indicar la ruta debes usar slash "/" en lugar de backslash "\" )
 * `sessionInfo()` Información de la sesión
 

##### Consultar ayuda
* Accesamos a esta ayuda anteponiendo el signo "?" a nuestro comando, por ejemplo para el comando "dir()"
  `?dir `
   comandos y argumentos `quit()`; `q()` ; `q("no")`  


# Manos  a la obra!

   * Cargar paquetes 
  `data()`,`library()`
  * Atributos
  `attributes()`

#### Manual/documentaciòn preincluida:  `?comando`

##estructuras basicas:
  1. "mode" de objetos: (numeric,logical,character)
  2. Vectores `a<-c(11,12,13,14)` ;  `c<-11:19` , `d<-seq(0,10,3)` ; `b<-c("naranja","sandia","uva","tuna")` ; 
     * Deben tener el "mismo mode" `mode(a)` 
  3. Matrices `matrix(11:19,nrow=2,ncol=2)`
    * *Ejercicio* usando la ayuda ? hacer que la matriz se construya según la secuencia de renglones.
  4. DataFrame `data.frame(a,d,b)`
    
  5. Listas
  5. Factors
  6. 
  ls()

### Construir y eliminar, subscript, operar.  objetos de estas estructuras
`a<-c(1,2,3,4,5,6,7)`  
`a<-1:7`  
`b<-1:9`
`c<-matrix(b,ncol=3,nrow=3)`
Construir una matriz cuadrada de lado 5 con los numeros del 5 al 30  
Construir una secuencia de `seq()`
seq() Construir una secuencia de 10 numeros de distancia dando pasos de .01 y hacerlo una matriz de 10X10




### Reconociendo estructuras básicas
`is.numeric(Mivariable)`  
`as.numeric(Mivariable)`  
`str()`  
`class()`,`mode()`
`length()`  

### Operaciones Básicas
Sumar
Restar
Multiplicar
Dividir
`max(),min(),mean(),sd()`  

Subtring  
Corchetes, $, 

Construir una matriz cuadrada de 6x6 con los numeros del 1 al 36 y obtener el promedio de la 3ra columna

## Crear mis datos de trabajo
* Datos a mano
`0,0,1,3,1,2,4,7,8,3,3,3,10,5,7,4,7,7,12,18,6,13,11,11,7,7,4,6,8,8,4,4,5,7,3,4,2,3,0,0`

`0,1,2,1,2,1,3,2,2,6,10,11,5,9,4,4,7,16,8,6,18,4,12,5,12,7,11,5,11,3,3,5,4,4,5,5,1,1,0,1,`

`0,1,1,3,3,2,6,2,5,9,5,7,4,5,4,15,5,11,9,10,19,14,12,17,7,12,11,7,4,2,10,5,4,2,2,3,2,2,1,1,`

`0,0,2,0,4,2,2,1,6,7,10,7,9,13,8,8,15,10,10,7,17,4,4,7,6,15,6,4,9,11,3,5,6,3,3,4,2,3,2,1,`

`0,1,1,3,3,1,3,5,2,4,4,7,6,5,3,10,8,10,6,17,9,14,9,7,13,9,12,6,7,7,9,6,3,2,2,4,2,0,1,1`  

Recuerda que si usas windows debes guardar el archivo en texto plano con la extension .csv y terminar el archivo con enter
Usar "slash" sencillo (/) en las rutas de tus archivos windows.

`DatosInfla<-read.csv(file = "Practica_R_Inflamacion.csv", header = FALSE)`
`head()`,`tail()`,`table()`,`summary()`,`table(pdata$age,useNA="ifany")`,`is.na()`,`dim()` ,`table()`,`summary()`
Obtener media por renglones rowMean(), colMean(), colSum()
Creo que el row mean es un excelente ejemplo de como se aventaja en linea de comandos en comparacion a entorno grafico
Hacerlos vector  
Crear una matriz de 5X20  
Obtener el promedio de inflamación del segundo paciente  
Graficarlo  
Desviacion éstandar  
`boxplot(as.numeric(MisDatos[1,]))`,`hist()`  
Poner colores  
Guardar pdf de la gráfica
Guardar el objeto actual y cargarlo luego
* Datos de prueba  
* `data()`
* `data(ChickWeigth)`, `data(Orange)`, `data(USAccDeaths)`
* Promedio del crecimiento del arbol 1 ¿Quien lo hace primero? <br>, sdev, promedio de crecimiento en tal dia, boxplot, hacerles substring a esos datos, plotear.
* Datos aleatorios
* Cargar sus propios datos
## Plotearlos con bloxplot, hist, 


##Script ninja!

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

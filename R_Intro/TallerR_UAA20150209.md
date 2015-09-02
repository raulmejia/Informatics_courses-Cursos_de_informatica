# ¿Por qué usar R?
* Ampliamente utilizado en el ámbito científico en particular en áreas biológicas / de la salud / ciencias de la tierra / ingeniería /estadística, entre otras...
* Gran cantidad de software escrito en este lenguaje.
* Software Libre

### ¿Cómo obtener R?
* https://cran.r-project.org/

# Manos  a la obra!

  * Donde estoy?
 `getwd()`
  * Cambiar de directorio de trabajo
  `setwd()`
  * Informacion de la sesión
`sessionInfo()`
  * Cargar paquetes 
  `data()`,`library()`
  * Atributos
  `attributes()`



##estructuras basicas:
  1. Variables (numeric,float,char)
  2. Vectores, Matrices
  3. Listas
  4. Factors
  5. DataFrames  

###Reconociendo estructuras básicas
`is.numeric(Mivariable)`  
`as.numeric(Mivariable)`  
`str()`  
`class()`  

### Manual/documentaciòn preincluida:  `?comando`
### Construir ejemplos de estas estructuras

Interrogar sobre el contenido
str(miobjeto)
class(miobjeto)

## Crear mis datos de trabajo
* Datos de prueba  
`0,0,1,3,1,2,4,7,8,3,3,3,10,5,7,4,7,7,12,18,6,13,11,11,7,7,4,6,8,8,4,4,5,7,3,4,2,3,0,0`
`0,1,2,1,2,1,3,2,2,6,10,11,5,9,4,4,7,16,8,6,18,4,12,5,12,7,11,5,11,3,3,5,4,4,5,5,1,1,0,1`
`0,1,1,3,3,2,6,2,5,9,5,7,4,5,4,15,5,11,9,10,19,14,12,17,7,12,11,7,4,2,10,5,4,2,2,3,2,2,1,1`
`0,0,2,0,4,2,2,1,6,7,10,7,9,13,8,8,15,10,10,7,17,4,4,7,6,15,6,4,9,11,3,5,6,3,3,4,2,3,2,1`
`0,1,1,3,3,1,3,5,2,4,4,7,6,5,3,10,8,10,6,17,9,14,9,7,13,9,12,6,7,7,9,6,3,2,2,4,2,0,1,1 `  
DatosInfla<-read.csv(file = "Practica_R_Inflamacion.csv", header = FALSE)

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


_1. List item__  
__1.1 List item
_2. List item

1. Hello
    1. Hello2 
2. Hey 
Abre R studio da clic en File -> New File -> R markdown... y solito te instalara los paquetes para que comiences a usarlo.  Recuerda guardar tu documento con la terminacion ".Rmd" para que puedas correrlo sin problemas.

### Para instalar devtools 

(Si usas Debian puedes usar los siguientes comandos) , si usas ubuntu ve la [sección](https://github.com/raulmejia/Cursos/edit/master/R_Intro/Rmarkdown/Intro.md)

1. Abre una terminal y ejecuta
```
sudo apt-get -y install libxml2-dev
```
2. Dentro de R teclea:
```
install.packages("rversions")
```
```
install.packages("devtools")
```
da clic en el boton "Knit" y te compilara tu documento ".Rmd" creandote un .pdf , .html o word segun hayas elegido.  

Puedes valerte de los botones "?" -> "Using R Markdown" y "Markdown Quick Reference"  

#Ejemplo:

---
title: "Prueba"
author: "rmejia"
date: "15/09/2015"
output: 
  rmarkdown::html_document:
    toc: true
  vignette: >
    %\VignetteIndexEntry{R markdown}
    %\VignetteEngine{knitr::rmarkdown}
    \usepackahe[utf8]{inputenc}
---

##Depdendencias

Este documento depende de los siquientes paquetes:

```{r}
library(devtools)
```

Para instalar el paquete puedes usar el código (o si estas compilando el documento retira el ´eval=FALSE´ en el trozo de código siguiente)
```{r, eval=FALSE}
library("devtools")
```

## Haz mas bonito tu código

Escoge el color de esquema y "pch" 

```{r}
## Color scheme inspired by RSkittleBrewer package
## https://github.com/alyssafrazee/RSkittleBrewer
tropical=c('darkorange','dodgerblue','hotpink','limegreen','yellow')
palette(tropical)
par(pch=19)
```

Desafortunadamente en los documentos de R markdown el "pch" no se propaga a menos que hagas algo mas enmara;ado. Esconderemos esto despues, pero por ahora esto es lo que necesitas para escoger el default.

```{r global-options,warning=FALSE, message=FALSE}
##see ch. 10 Hooks of Xie's knitr book
library(knitr)
knit_hooks$set(setPch=function(before, options,envir){
  if (before) par(pch=19)
})
opts_chunk$set(setPch=TRUE)
```


Ocultaremos esto en futuros documentos, pero esto muestra como elegir elegir el largo y ancho default de una figura, as'i como los margenes de "ploteo"

```{r global-plot,warning=FALSE, message=FALSE}
knitr::opts_chunk$set(fig.width=5,fig.heigth=5, size="footnotesize",
                      warning=FALSE, message=FALSE)
knitr::knit_hooks$set(small.mar=function(before,options,envir){
  if(before)graphics::par(mar=c(5,5,1.5,1))
})

```

## Compilando Documentos
1. Compila este documento usando el bot'on "Knit HTML" que archivo produce
2. Edita el documento para ser "pdf_document" y recompila. Qu'e archivo produce?
3. Edita el documento a un "word_document"

## Nombrando porciones del c'odigo

1. La etiqueta "chunk1" te indica que parte del c'odigo estaba corriendo en caso de que tengas errores. Si compilas este documento, lo veras abajo de la ventana "R markdown" de Rsutdio.

```{r, chunk1}
x=rnorm(100)
plot(x, col=3) 
```

## Encabezados

#Este es un encabezado primario
## Secundario
### Terciario

##Listados

Puedes crear listas numeradas y por puntos, de la siquiente manera:

* Bullet item 1
* Bullet item 2
* Bullet item 3

1. Manzanas
2. Peras
3. Guayabas

##Figuras

Estos son los argumentos par acambiar la alineacion de la figura
```{r chunk2, fig.height=6, fig.width=6, fig.align="center"}
x=rnorm(100)
plot(x,col=3, pch=19)
```

Setting  `cache=TRUE` hace que el c'odigo no tarde tando en ejecutarse la segunda vez. Para ver esto, descomenta el codigo de abajo y correlo doz veces.

```{r longtime, cache=FALSE}
#Cambia el anterior valor a TRUE, pero cuidado porque estas guardando informacion.
#Sys.sleep(10)
```

##Session information

Es muy util guardar la sesion cuando realizas analisis, para que puedas colaborar contigo mismo en el futuro.

```{r}
sessionInfo()
devtools::session_info()
```


tambien es util compilar el tiempo al cual tu documento fue procesado. Este documento fue procesado el: `r Sys.Date()`.

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.























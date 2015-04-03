#Instalar paquetes en R
Para ver paquetes disponibles en R-CRAN 
```
s<-available.packages()
head(rownames(s))
```

Para instalarlos
```
install.packages("XX") 
install.packages(c("XX","YY"))
```
>Desde Rstudio (incluir imágenes de como hacerlo gráficamente)
>Tools, Install packages, seleccionar repositorio y paquete
  
Instalar de bioconductor
```
source("http://bioconductor.org/biocLite.R")
biocLite(c("XX","YY"))
```
Despues de instalar... cargar los paquetes antes de usarlos:
```
library(XX)
```

Para ver que paquetes estan cargados
```
sessionInfo()
search()
```
#Instalar paquetes en R
Para ver paquetes disponibles en R-CRAN 
´´´
s<-available.packages()
head(rownames(s))
´´´
>Muestra los paquetes disponbles

Para instalarlos
install.packages("XX") 
install.packages(c("XX","YY"))

Desde Rstudio (incluir imagenes)
  Tools, Install packages, seleccionar repositorio y paquete
  
Instalar de bioconductor
'source("http://bioconductor.org/biocLite.R")'
¨biocLite(c("XX","YY"))¨

Despues de instalar, Cargar los paquetes antes de usarlos
library(XX)

Para ver que paquetes estan instalados
sessionInfo()
search()



"lower rank" =? best matrix created with fewer variables that explains the original data.

Tomar el promedio de coumnas y renglones para darme una idea de como estan los datos

Data = eigenarrays/leftsingularvectors/loadings + singular values + eigengenes(rigth_singular_vectors/principal_components)

A que se refiere "left singular vectors", singular values and rigth singular vectors
  Que son y como se calculan?
  
  LSF(eigen-arrays) vemos patrones entre los renglones del data set, es el equivalente al rowmeans en cuanto trata de identificar
  patrones entre los renglones.


Ver wikipedia al respecto

  The columns across Vt describe patterns across genes
    The columns across U describe patterns across arrays
    
https://github.com/jtleek/dataanalysis/tree/master/week3/006dimensionReduction

http://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/ADAfaEPoV.pdf
http://statweb.stanford.edu/~tibs/ElemStatLearn/

# Nota en el minuto 04:02 del video la figura de enmedio creo que tiene alreves los "labels" y conservo el mismo error
para las slide siguiente. De hecho en todas donde tiene las tres figuras.

# Por que al darle pesos a los "D values" o eigenvalues se elevan al cuadrado y se dividen en la la suma de 
los cuadrados de los mismos?

http://www.nature.com/nature/journal/v456/n7128/full/nature07331.html

http://genomicsclass.github.io/book/pages/svacombat.html

http://genomicsclass.github.io/book/
  WOW!!!

Finaliza con:   
http://www.nature.com/nrg/journal/v11/n10/full/nrg2825.html
  Hay mas descomposiciones que la gente usa:
    multidimensional scaling, independent component analysis, non-ngative matrix factorization.
https://www.edx.org/course/advanved-statistics-life-sciences-harvardx-ph525-3x

#####  Practica
tropical=c("darkorange","dodgerblue","hotpink","limegreen","yellow")
palette(tropical)
par(pch=19)
library(devtools)
library(Biobase)

con=url("http://bowtie-bio.sourceforge.net/recount/ExpressionSets/montpick_eset.RData")
#Montgomery and Pick roll paper
load(file=con)
close(con)
mp =  montpick.eset
pdata = pData(mp)
edata=as.data.frame(exprs(mp))
fdata = fData(mp)
ls()
edata =  edata[rowMeans(edata)>100]
dim(edata)
edata =  log2(edata + 1)

#ahora vamos a centrar los datos removinedo "el centro" de los datos si no sera el primer Singular value
edata_centered = edata - rowMeans(edata)
svd1 = svd(edata_centered)
names(svd1)

#"d" son los singular values

plot(svd1$d, ylab="Singular values", col=2)
plot(svd1$d^2/sum(svd1$d^2),ylab="Percent of Variance Explained",col=2)

#Hagamos un plot con 2 paneles
par(mfrow=c(1,2))

plot(svd1$v[,1],col=2, ylab="1st PC")
plot(svd1$v[,2],col=2, ylab="1st PC")

#En este punto colorealos, dependiendo a diferentes variables para ver si algo pasará
# Pero en vez de eso nosotros lo plotearemos pc1 vs pc2

par(mfrow(1,1))
plot(svd1$v[,1] , svd1$v[,2],col=2, ylab="2st PC", xlab="1st PC")

#Coloreamos de acuerdo al estudio

plot(svd1$v[,1] , svd1$v[,2],col=as.numeric(pdata$study), ylab="2st PC", xlab="1st PC")

#Box plot para ver que onda
boxplot(svd1$v[,1] ~ pdata$study,border=c(1,2))
#Box plot para ver que onda, a lo anterior le marcamos los puntitos arriba:
boxplot(svd1$v[,1] ~ jitter(as.numeric(pdata$study),col=as.numeric(pdata$study))  
pc1 = prcomp(edata)
plot(pc1$rotation[,1],svd1$v[,1])

edata_centered2 = t(t(edata) - colMeans(edata))




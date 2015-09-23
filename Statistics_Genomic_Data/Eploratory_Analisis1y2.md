Nota trabaja TODO en un script de R para que al final solo des un clic y te haga todo el análisis EN CHINGA con un clic

Tambien hazlo en .Rmd para que te de un documento final bien pipis nice

############


tropical=c("darkorange","dodgerblue","hotpink","limegreen","yellow")
palette(tropical)
par(pch=19)

library(gplots)
library(devtools)
library(Biobase)
library(RSkittleBrewer)
library(org.Hs.eg.db)
library(AnnotationDbi)
library(dplyr)

#########Si no los tienes instalados corre########
library(gplots)
instal.packages("gplots")
library(devtools)
sudo apt-get install libxml2-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get build-dep libxml2-dev
sudo apt-get install curl
sudo apt-get install libcurl4-gnutls-dev
sudo apt-get install libssl-dev

install.packages("git2r")
sudo apt-get -y build-dep libcurl4-gnutls-dev



install.packages("devtools")
library(Biobase)
library(RSkittleBrewer)
library(org.Hs.eg.db)
library(AnnotationDbi)



#################

CARGA DE DATOS Y EXPLORAR LOS DATOS SIN GRAFICAR...

con=url("http://bowtie-bio.sourceforge.net/recount/ExpressionSets/bodymap_eset.RData")
load(file=con)
bm= bodymap.eset
pdata=pData(bm)
edata=exprs(bm)
fdata=fData(bm)
ls()


table(pdata$gender, pdata$race)
table(is.na(pdata$age))
summary(edata)
sum(is.na(edata))

`head()`,`tail()`,`table()`,`summary()`,`table(pdata$age,useNA="ifany")`,`is.na()`, ,`table()`,`summary()`

sum(pdata$age==" ", na.rm=TRUE)
sum(is.na(pdata$gender))
gene_na=rowSum(is.na(edata))
dim()


############## GRAFICAR LOS DATOS #########

#install.packages("dplyr")
library(dplyr)
boxplot(edata[,1]) ,# col=rainbow(Numero_de_cosas), range=0 para no ver los outliers

par(mfrow=c(1,2))
hist(log2(edata[,1]+1),col=3)
par(mfrow=c(1,1))
plot(density(log2(edata[,1]+1)),col=2)

#Para hacer "overlie" el comando "lines"--------------
lines(density(log2(edata[,2]+1)),col=4)

## ---------------------

qqplot(log2(edata[,1]+1),log2(edata[,2]+1),col=7 )
abline(c(0,1))

## ---------------------

mm = log2(edata[,1]+1) - log2(edata[,2]+1)
aa = log2(edata[,1]+1) + log2(edata[,2]+1)
plot(aa,mm,col=2)
meanmia = mean(log2(edata[,1]+1), log2(edata[,2]+1))

¿Por que al graficar el MA plot muchos de los puntos aparentemente "caen", exactamente sobre lineas diagonales?

## -------------------------

edata = as.data.frame(edata)
¿Por que tuvo que convertirlo a Data frame?
filt_edata= filter(edata, rowMeans(edata)>1)
boxplot(as.matrix(log2(filt_edata+1)),col=2)


##-------
##-------------
#Getting the ids

aeid = as.character(fdata[,1])
#Now extract the chromosome information
chr = AnnotationDBi::select(org.Hs.eg.db,keys = aeid, keytype ="ENSEMBL",columns="CHR")
head(chr)

dim(chr)
dim(edata)
#remove all the duplicate
# Primero por que me dio duplicados? acaso habia sondas con mas de un gen asociado?

chr=chr[!duplicated(chr[,1]),]
all(chr[,1]== rownames(edata))

# Select the chromosome Y samples
edatay = dplyr::filter(edata,chr$CHR=="Y")

boxplot(colSums(edatay) ~ pdata$gender, col=2)






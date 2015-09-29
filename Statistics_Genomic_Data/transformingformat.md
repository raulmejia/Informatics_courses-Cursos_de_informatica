
tropical=c("darkorange","dodgerblue","hotpink","limegreen","yellow")
palette(tropical)
library(devtools)
library(Biobase)
con=url("http://bowtie-bio.sourceforge.net/recount/ExpressionSets/bodymap_eset.RData")
load(file=con)
bm= bodymap.eset
pdata=pData(bm)
edata=exprs(bm)
fdata=fData(bm)
low_genes2= rowMedians(as.matrix(edata))<5


hist(log(edata[,1],col=2,breaks=100))
#le sumamos uno a todo porque los ceros nos da infinito
hist(log(edata[,1]+1))
hist(log2(edata[,1]+1),col=2,breaks=100)
hist(log2(edata[,1]+1),col=2,breaks=100,xlim=c(1,17),ylim=c(0,400))
filt_edata = filter(as.data.frame(edata),!low_genes)

##-----
hist(rnorm(1000),col=2)
hist(edata[,1],col=2)
hist(edata[,1],col=2, breaks=1000)
hist(log(edata[,1]), col="red",breaks=100)
hist(rowSums(edata==0),col=2)

low_genes = rowMeans(edata) < 5
table(low_genes)




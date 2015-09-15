3TipesofTablesinR
##--- load Data
con<-url("http://bowtie-bio.sourceforge.net/recount/ExpressionSets/bodymap_eset.RData")
load(file=con)
close(con)
bm=bodymap.eset
class(bm)
str(bm)
Myexp_data = exprs(bm)
dim(Myexp_data)
head(Myexp_data,n=5)
phenoData= pData(bm)
dim(phenoData)
phenoData
featureData= fData(bm)
dim(featureData)
head(featureData)

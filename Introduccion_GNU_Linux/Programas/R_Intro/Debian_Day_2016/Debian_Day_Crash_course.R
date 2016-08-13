library("gplots")
#install.packages("RColorBrewer")
sessionInfo()

getwd()
setwd("/home/rmejia/Documents/Activismo_Nabuco2069/DebianDay/")
mifilepath<-c("/home/rmejia/Documents/Activismo_Nabuco2069/DebianDay/Elecciones_Zac.tsv")
ezac<-read.table(file=mifilepath,header=TRUE,row.names = 1)
dim(ezac) ; head(ezac)
ezac_vot<-ezac[1:58,1:15]
m_zacvot<-as.matrix(ezac_vot)

head(ezac_vot)  

# Visualizing 
png(filename = "Heatmap_Elecciones_Zac.png",width = 2280, height = 2280, pointsize = 20)
palette.breaks <- seq(min(m_zacvot),max(m_zacvot),max(m_zacvot)/100)
color.palette  <- colorRampPalette(c("#91CF60", "#FFFFBF", "#FC8D59"))(length(palette.breaks)-1)
heatmap.2( 
  m_zacvot,
  dendrogram='none',
  #Rowv = TRUE,
  #Colv = TRUE,
  trace='none',
  key        = TRUE,
  col    = color.palette,
  breaks = palette.breaks,
  main = c("Absolute votations Heatmap")
)
dev.off()

svg(filename = "Heatmap_Elecciones_Zac.svg", width = 7, height = 7, pointsize = 3,
    onefile = FALSE, family = "sans", bg = "white",antialias = c("default", "none", "gray", "subpixel"))
palette.breaks <- seq(min(m_zacvot),max(m_zacvot),max(m_zacvot)/100)
color.palette  <- colorRampPalette(c("#91CF60", "#FFFFBF", "#FC8D59"))(length(palette.breaks)-1)
heatmap.2( 
  m_zacvot,
  #dendrogram='none',
  Rowv = TRUE,
  Colv = TRUE,
  trace='none',
  key        = TRUE,
  col    = color.palette,
  breaks = palette.breaks,
  main = "Heatmap_Elecciones_Zac"
)
  dev.off()


pdf(file="Elecciones_Zac_z-scores.pdf")
heatmap(m_zacvot)
dev.off()

#### PCA!

#install.packages('ggfortify')
library(ggfortify)
# Define our group
##myGSE= c(rep("GSE42568",121),rep("GSE50567",41),rep("GSE4002",433),rep("GSE10810",58),rep("GSE29431",66))
# We transpose the matrix 
#t.edata<-t(edata)
#t.edata.myGSE<-cbind(t.edata,myGSE)
#d.f.t.e <-as.data.frame(t.edata.myGSE)

mycolor=rainbow(58)
dim(m_zacvot)


# Convert the matrix to data.frame as the program requires:
d.f_m_zacvot<-as.data.frame(m_zacvot)

# PCA a municipios
pdf("PCA_Zac_Elec.pdf",width=7,height=5)
autoplot(prcomp(m_zacvot), data=d.f_m_zacvot,colour= mycolor, main="Principal components Zac Elections")
dev.off()

#PCA a partidos
t.m_zacvot<-t(m_zacvot)
df_tm.zac<-as.data.frame(t.m_zacvot)
mycolor=c("blue","red","yellow","pink","green","orange","purple","gray",rep(c("black"),7))
pdf("PCA_Zac_Elec_by_Parties.pdf",width=7,height=5)
autoplot(prcomp(t.m_zacvot), data=df_tm.zac, colour=mycolor, main="Principal components Zac Elections")
dev.off()


## Save the data

save(m_zacvot,file="MatrixZacElecciones2016.RData")

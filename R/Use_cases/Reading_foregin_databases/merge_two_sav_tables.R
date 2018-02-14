--- Data Given by the user
# hta_imc_path<-c("/media/rmejia/ADATA-HD710/boba-bk-postsismo/rmejia/Documents/datos_de_Familiares_y_personas/Luis-Ruelas/Tablas_por_pegar/Data/hta_imc.sav")
# adultos_cronicas_path<-c("/media/rmejia/ADATA-HD710/boba-bk-postsismo/rmejia/Documents/datos_de_Familiares_y_personas/Luis-Ruelas/Tablas_por_pegar/Data/adultos_cronicas.sav")
# Results_path <- c("/media/rmejia/ADATA-HD710/boba-bk-postsismo/rmejia/Documents/datos_de_Familiares_y_personas/Luis-Ruelas/Tablas_por_pegar/Results/")

args <- commandArgs(trailingOnly = TRUE)
hta_imc_path<-args[1]
# la ruta del primer data frame
adultos_cronicas_path<-args[2]
# la ruta del segundo data frame
Results_path<-args[3]
# La carpeta donde se guardarán tus resultados

#--- Installing packages
if (!require("foreign")) {
  biocLite("foreign", ask =FALSE)
  library(foreign)
}

#--- Body
table1 = read.spss(hta_imc_path, to.data.frame=TRUE,trim.factor.names=TRUE)
table2 = read.spss(adultos_cronicas_path, to.data.frame=TRUE,trim.factor.names=TRUE)

table1 <- data.frame(lapply(table1, as.character), stringsAsFactors=FALSE)
table2 <- data.frame(lapply(table2, as.character), stringsAsFactors=FALSE)

trim <- function (x) gsub("^\\s+|\\s+$", "", x)

table1_foliotrimed<-unlist(lapply(table1[,"folio"],trim))
table1[,"folio"] <- table1_foliotrimed
table2_foliotrimed<-unlist(lapply(table2[,"folio"],trim))
table2[,"folio"] <- table2_foliotrimed

merged <- merge(table1,table2, by = "folio")

write.table(merged,file=paste0(Results_path,"merged_inner_join.tsv"),quote=FALSE, sep="\t")

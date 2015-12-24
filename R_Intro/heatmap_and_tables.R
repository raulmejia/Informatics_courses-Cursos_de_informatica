Heatmap tables

install.packages("Hmisc")
install.packages("reshape")
install.packages("GGally")

library(Hmisc)
library(ggplot2)
library(reshape2)
library(GGally)
data(HairEyeColor)
P=t(HairEyeColor[,,2])
Pm=melt(P)

ggfluctuation2(Pm,type="heatmap")+
  geom_text(aes(label=Pm$value),colour="white")+
  opts(axis.text.x=theme_text(size = 15),axis.text.y=theme_text(size = 15))

?ggfluctuation2
data(movies, package = "ggplot2")
ggfluctuation2(table(movies$Action, movies$Comedy))
movies
Pm
ggplot(Pm, aes(Eye, Hair, fill=value)) + geom_tile() +
  geom_text(aes(label=Pm$value),colour="white")+ 
  theme(axis.text.x=element_text(size = 15),axis.text.y=element_text(size = 15))
colnames
frutas=c("manzana","pera","sandia","pina","uva")
My.D.F<-as.data.frame(matrix(1:25,nrow=5))
ggplot(My.D.F) + geom_tile() +
  geom_text(aes(label=Pm$value),colour="white")+ 
  theme(axis.text.x=element_text(size = 15),axis.text.y=element_text(size = 15))
Pm$value<-1:16
Pm
MyD.F.

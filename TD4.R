#TD4
#Exo 1 

#Q1)
velo=read.csv("C:/Users/aguer/Downloads/velov.csv", header= TRUE, sep= ";", dec=",")
summary(velo)
View(velo)

#Q2)
class(velo$status)
class(velo$CodePostal)

#Q3)
velo$CodePostal=as.factor(velo$CodePostal)
velo$status=as.factor(velo$status)
class(velo$status)
class(velo$CodePostal)

#Q4)
velo$bornes=ifelse((velo$bikes+ velo$stand) != velo$capacity,"OK","KO")
View(velo)
table(velo$bornes)

#EXERCICE 2 /
#Q1)
hist(velo$capacity, main = "Répartition des capacités par station",xlab="Capacité",col="black",breaks=20,probability =FALSE,ylim = c(0, 200), xlim = c(0, 100))
     
#Q2)
hist(velo$capacity, main = "Répartition des capacités par station",xlab="Capacité",col="black",breaks=6,probability =FALSE,ylim = c(0, 200), xlim = c(0, 100))

#Q3)
hist(velo$capacity, main = "Répartition des capacités par station",xlab="Capacity",col="red",breaks=20,probability =FALSE,ylim = c(0, 200), xlim = c(0, 100))
abline(h=100, col = "black", lty = 2)

#Q4)
hist(velo$capacity, main = "Répartition des capacités par station",xlab="Capacity",col="red",probability =TRUE,ylim = c(0, 0.08), xlim = c(0, 100))

de=density(velo$capacity)
lines(x=de,lwd =5 ,col="blue")

#Q5)


#EXERCICE 3)
#Q1)
boxplot(velo$capacity,main = "Diagramme en boîte de la capacité",outline = FALSE)

#Q2)
boxplot(velo$capacity,main = "Diagramme en boîte de la capacité",horizontal = TRUE)

#Q3)
boxplot(velo$capacity,main = "Diagramme en boîte de la capacité",outline = FALSE)

moy=mean(velo$capacity)
points(moy,col = "red", pch = 15, cex = 2)


table(velo$capacity)

par(mfrow=c(1,2))
df7 = subset(velo, CodePostal == "69007")
boxplot(x = velo$bikes, 
        main = " Répartition nb vélos 69007",
        ylim = c(0,40))

df8 = subset(velo, CodePostal == "69008")
boxplot(x = velo$bikes, 
        main = "Répartition nb vélos 69008",
        ylim = c(0,40))

par(mfrow=c(1,1)) 
boxplot(formula = bikes ~ bonus,
        data = velo, 
        main = "Dispo vélos vs Stations Bonus")

#Q7
barplot( table(velo$bonus),main ="Répartition du nombre de stations bonus")
barplot( table(velo$bonus),main ="Répartition du nombre de stations bonus",horiz = TRUE)

#EXERCICE 4)

















#EXERCICE 1
#1)
fao=read.csv(file="C:/Users/aguer/Downloads/fao.csv", header = TRUE, sep = ";", dec = ",")
View(fao)

#2)
summary(fao$Nom)
nrow(fao)
#3)
summary(fao)

#EXERCICE2

#1)
mean(fao$Dispo_alim,na.rm = TRUE)

#2)
sum(fao$Population,na.rm = TRUE)

#3)
ecartimport=sd(fao$Import_viande,na.rm = TRUE)
ecartexport=sd(fao$Export_viande,na.rm = TRUE)
print(ecartexport)
print(ecartimport)

#4)
medianprod=median(fao$Prod_viande,na.rm = TRUE)
print(medianprod)

#5)
quartilecal= quantile(fao$Dispo_alim, probs = c(0.25, 0.5, 0.75))
print(quartilecal)

#6)
centilecal=quantile(fao$Import_viande, probs = c(seq(0,1,0.01))
print(centilecal)


#EXERCICE3

#1)# order 5 pays les plus peuplés

pays5 <- fao[order(fao$Population), ]
print(pays5[1:5, ])

#2)
pays5 <- fao[order(fao$Population, decreasing = TRUE),  ]
print(pays5[1:5, ])

#2 Alternative)

top_5_populated_countries <- fao[order(-fao$Population), ][1:5, ]
print(top_5_populated_countries)

#3)
viande5 <- fao[order(fao$Prod_viande, decreasing = TRUE),  ]
print(viande5[1:5, ])


#4)
importviande5 <- fao[order(fao$Import_viande, decreasing = TRUE),  ]
print(importviande5[1:5, ])

#5) sélectionner les lignes avec conditions et compter le nombre de lignes

subset_fao= subset(fao, Dispo_alim>=2300)
besoin=subset_fao[order(subset_fao$Population,decreasing=TRUE), ]
print(besoin)
length(besoin$Population)

#6)

fao_fao= subset(fao, Dispo_alim>=3500 & Import_viande>=1000)
besoin=fao_fao[order(fao_fao$Dispo_alim,decreasing=TRUE), ]
print(besoin)

#7)
resultat = subset(fao, $Nom %in% c("France","Belgique"))
View(resultat)

#Exercice 4 /
#Q1°
fao$Part_export<-fao$Export_viande/fao$Prod_viande
#Q2°
fao$Dispo_alim_pays<-fao$Dispo_alim*fao$Population
#Q3°
write.table(x = fao, file = "ExportTp2.csv")
#Q4°
dispo_alim_mondiale = sum(fao$Dispo_alim_pays, na.rm=TRUE)
dispo_alim_mondiale
#Q5°
dispo_alim_mondiale/2300


#Exercice 5
#Q1°
plot(x = fao$Prod_viande,
     y = fao$Export_viande, 
     main = "Pays : Prod_viande / Export_viande")
#Q2°
cor(x = fao$Prod_viande,
    y = fao$Export_viande)
#Q3°
matriceCor = cor(fao[ , - 1] , use = "complete.obs")
matriceCor = round(matriceCor , 2)
View(matriceCor)
#Q4°
#commande à executer qu'une seule fois
install.packages("corrplot")

#Q5 CHARGEMENT DU PACKAGE
library(corrplot) 
corrplot(matriceCor, method="circle")

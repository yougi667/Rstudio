#Exercice 1
#Q1)
par(mfrow = c(1,1))
plot(NA, xlim=c(-5, 5), ylim=c(0, 1), xlab="X", 
     ylab="Densité de probabilité", 
     main="Densités de probabilité \n de lois normales")

#Q2)
moyennes=c(0,0,0,-2)
sigmas=c(0.45,1,2.25,0.7)
colors=c("red", "blue", "green", "orange")
legend_labels <- c()
for (i in 1:length(moyennes)) {
  serie=rnorm(n=1000,
              mean=moyennes[i],
              sd=sigmas[i])
  lines(density(serie),col=colors[i])
  legend_labels=c(legend_labels,paste("m=",moyennes[i],",","s=",sigmas[i]))
}


legend("topright", legend=legend_labels, col=colors, lwd=2, cex=0.8)

#Q3)
serie=rnorm(10000,mean=0,sd=1)

#Q4)

hist(serie,main="loi normal centrée-réduite",probability =TRUE)
lines(density(serie))

#Q5)

median(serie)

#Q6)

quant=seq(0.1,0.9, by=0.1)
quantile(serie,probs=quant)

#Q7)

quant=seq(0.01,0.99, by=0.01)
quantile(serie,probs=quant)

#Q8)

qnorm(0.95,0,1)
pnorm(1.644854,0,1)

#Q9)

qnorm(p = 0.975, mean = 0, sd = 1)

#Q10)

qnorm(p = 0.975, mean = 0, sd = 1)

pnorm(1.959964,0,1)

#Exercice 2)

#Q1)

#valeur de 0.0 a 3.9 de la table loi normale
seqq=seq(from = 0.0, to = 3.9, by = 0.1)
probas=c()
for (i in seqq){

  proba=pnorm(q=i, mean = 0,sd = 1)
  #on rajoute les probas a chaque fois au cevteur
  probas=c(probas,proba)
  probas=round(probas,digits=4)
}

print(probas)


#Q2)
#valeur de 0.00 a 3.99 de la table loi normale
seq_colonne=seq(from = 0.00, to = 0.09, by = 0.01)
seq_lignes=seq(from = 0, to = 3.9, by = 0.1)

resultat=NULL

for (j in seq_colonne){
  probas=c()

  for(i in seq_lignes){
    quantile=i+j
    proba=pnorm(quantile,0,1)
    probas=c(probas,proba)
    probas=round(probas,digits=4)
  }
resultat=cbind(resultat,probas)
}
print(resultat)
#Q3)
class(resultat)
table = data.frame(resultat)
colnames(table) = indices_colones
rownames(table) = indices_lignes
View(table)

#Exercice 3)

population=rnorm(10000000,171,9)
#Q2)

mean(population)
sd(population)

#Q3)
hist(population,main="Répartition population normale",
     col="red")

#Q4)
pop190=population[population<190]
length(pop190)
length(pop190)/length(population)

pnorm(190,171,9)*10000000

#Q5)
pop200=population[population>=200]
length(pop200)
length(pop200)/length(population)

(1-pnorm(200,171,9))*10000000

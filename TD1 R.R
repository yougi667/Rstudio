a=10
b=5
resultat=a*b
print(resultat)
A=7.2
B=10.01
resultat=A+B
print(resultat)
rm(list = ls())

#EXO2
vecteur <- seq(1, 5, by = 1)
class(vecteur)
vecteur[3]
print(vecteur)

v1 = 1:5

v2 = v1+3
v3 = 1:6
v4=(v3)**2
v5=(v4)/2
semaine=c("Lundi","Mardi","Mercredi","Jeudi","Vendredi","Samedi","Dimanche")
class(semaine)
semaine[2,7]

booleen=c("True","False")
print(booleen)
decimal=c(1.05,5.6,51,4.2,402,5.52)
print(decimal)
class(decimal)
print(decimal[-3])

date(now())
mois=c("Janvier","Février","Mars","Avril","Mai","Juin","Juillet","Aout","Septembre","Octobre","Novembre","Décembre")
class(mois)
mois[1:3]

negatif=c(-5,-8,-8,-3,-7)
class(negatif)
head(negatif,n=1)
tail(negatif,n=1)

fruit=c("Poire","Kiwi","Banane","Grenade","Litchi")
class(fruit)
fruit[c(-1,-2)]

numerique=c(1,2,NA,4,NULL,6,7)
print(numerique)

sequence2 = seq(1, 10, by = 1)
length(sequence2)

sequence3 = seq(2, 20, by = 2)
length(sequence3)

sequence4 = seq(-5, 0, by = 1)
length(sequence4)

sequence5 = seq(5, 50, by = 5)
length(sequence5)

sequence6 = seq(from = 10, to = 1, by = -1)
length(sequence6)
print(sequence6)

rep1=rep(3,5)
print(rep1)
rep("C",3)
vecteur2=c(rep("A",3),rep("B",3),rep("C",3))

vecteur3=c(rep("A","B",3)
print(vecteur3)

vecteur4 = rep(c('A', 'B', 'C'), times = 3)
print(vecteur4)

vecteur8=rep(c(1,2,3),times =3 )
print(vecteur8)


vecteur9 = rep(c('true', 'False'), times = 4)
print(vecteur9)


runif(5,0,1)

runif(10,-5,5)

runif(100,10,20)

runif(15,50,100)
rnorm(20,-2,3)


mean(rnorm(20,-2,3))
sd(rnorm(20,-2,3))

runif(100,10,20)
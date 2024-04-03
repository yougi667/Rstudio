bodies_karts = read.csv(file = "bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
tires = read.csv(file = "tires.csv", header = TRUE, sep = "\t", dec = ",")
gliders = read.csv(file = "gliders.csv", header = TRUE, sep = "|", dec = ".")
drivers = read.csv(file = "drivers.csv", header = TRUE, sep = ";", dec = ",")

dim(drivers)
dim(tires)
dim(gliders)
dim(bodies_karts)

summary(drivers)
summary(tires)
summary(gliders)
summary(bodies_karts)

plot(x = drivers$Weight, y= drivers$Acceleration)
corr=cor(x = drivers$Weight, y= drivers$Acceleration, method = "pearson")

coeff=(cov(x = drivers$Weight, y= drivers$Acceleration))/(sd(drivers$Weight)*sd(drivers$Acceleration))
print(coeff)

corr=cor(x = drivers$Weight, y= drivers$Acceleration, method = "pearson")
print(corr^2)

View(drivers)
View(bodies_kart)
matcor=cor(drivers[,-1])
matcor= round(matcor,2)
View(matcor)

install.packages("corrplot")
library(corrplot)
corrplot(matcor,method="color", type="upper", order="hclust")

mattires=cor(tires[,-1])
mattires= round(mattires,2)
View(mattires)


matgliders=cor(gliders[,-1])
matgliders= round(matgliders,2)
View(matgliders)

matbodies_kart=cor(bodies_karts[,-1])
matbodies_kart= round(matbodies_kart,2)
View(matbodies_kart)


library(corrplot)
corrplot(matbodies_kart,method="color", type="upper", order="hclust")
library(corrplot)
corrplot(mattires,method="color", type="upper", order="hclust")
library(corrplot)
corrplot(matgliders,method="color", insig="blank",sig.level = 0.01)




resultat=drivers[,c("Weight","Driver")]
View(resultat)

resultat=drivers[1:10,c("Weight","Acceleration")]
View(resultat)

resultat = drivers[ , -c(5,7,9)]
View(resultat)


resultat = drivers[ , -c(2,3)]
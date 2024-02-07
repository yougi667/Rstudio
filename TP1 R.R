iris
class(iris)
View(iris)
data(iris)

nrow(iris)
ncol(iris)
colnames(iris)

summary(iris)

data(iris)
iris[ , c("Sepal.Lenght","Species")]
iris[ , c("Sepal.Length","Species")]

iris[c(100,103,105) , ]

iris[c(50:100) , ]

mean(iris[ , c("Sepal.Length")])
median(iris[ , c("Sepal.Length")])
sd(iris[ , c("Sepal.Length")])

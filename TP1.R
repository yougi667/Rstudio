#Exercice 1 TP1 RSTUDIO

#Q1°
iris
class(iris)
#Q2°
View(iris)

#Q3°
nrow(iris)
#Q4°
ncol(iris)
#Q5°
colnames(iris)
#Q6°
summary(iris)

#Q7°
iris[ , c("Sepal.Lenght","Species")]

#Q8°
iris[c(100,103,105) , ]
#Q9°
iris[c(50:100) , ]
#q10°
mean(iris[ , c("Sepal.Length")])
#Q11°
median(iris[ , c("Sepal.Length")])
#Q12°
sd(iris[ , c("Sepal.Length")])

#Exercice 2
#Q1°
dfManga <- read.csv(".../.../.../manga.csv", header = TRUE, sep = ",", dec = ".")
dfAnime <- read.csv(".../.../.../anime.csv", header = TRUE, sep = ",", dec = ".")
class(dfManga)
#Q2°
View(dfManga)

View(dfAnime)
#Q3°
dim(dfManga)
dim(dfAnime)
mean(dfManga$Score)
#Q4°
mean(dfAnime$Score)
class(dfAnime)
#q5°
sum(dfManga$Vote)
sum(dfAnime$Vote)
#Q6°
sd(dfManga$Score)
sd(dfAnime$Score)
#Q7°
quantile(dfManga$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
quantile(dfAnime$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))

# Filtre sur les mangas
#Q1°
extraction1 <- subset(dfManga, Score > 9)
nrow(extraction1)
#Q2°
extraction2 <- subset(dfManga, Vote >= 200000)
nrow(extraction2)
#Q3°
extraction3 <- subset(dfManga, Vote >= 200000 & Score >= 8)
nrow(extraction3)
#Q4°
extraction4 <- subset(dfManga, Score >= 7 & Score <= 8)
nrow(extraction4)

#fILTRE SUR LES ANIMES

#Q1°
effectifRating <- table(dfAnime$Rating)
print(effectifRating)
length(effectifRating)
prop.table(effectifRating)
#Q2°
extraction2 <- subset(dfAnime, Rating == "R - 17+ (violence & profanity)")
nrow(extraction2)
#Q3°
extraction3 <- subset(dfAnime, Rating == "R - 17+ (violence & profanity)" &
                        Score >= 8)
nrow(extraction3)
#Q4°
extraction4 <- subset(dfAnime, Rating != "R - 17+ (violence & profanity)")
nrow(extraction4)
#Q5°
extraction5 <- subset(dfAnime, Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction5)
#Q6°
extraction6 <- subset(dfAnime, !Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction6)
#Q7°
extraction7 <- subset(dfAnime, Score >= 9 | Vote > 400000)
nrow(extraction7)

#LES FONCTIONS RBIND ET WRITE TABLE

#Q1°
dfAnime <- dfAnime[ , c("Title","Score","Vote","Ranked")]
dfManga <- dfManga[ , c("Title","Score","Vote","Ranked")]
#Q2°
dfAnime$Type <- "Anime"
dfManga$Type <- "Manga
#Q3°
dfConcat <- rbind(dfManga,dfAnime)
View(dfConcat)
#Q4°
write.table(x = dfConcat, file = ".../.../.../ExportTp1.csv",
            sep = ";",row.names = FALSE)

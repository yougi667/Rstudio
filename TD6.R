getwd()
setwd('C:/Users/aguermassi/Downloads')

df = read.csv(file = "NBA2014_2015.csv",header = TRUE, sep = ",", dec = ".")
View(df)
#importer jeu de données et l'appeler nba
nrow(nba)
#nb de lignes
ncol(nba)
#nb de colonnes
colnames(nba)
#noms des colonnes

nba$PERIOD =as.factor(nba$PERIOD)
nba$PTS_TYPE = as.factor(nba$PTS_TYPE)
nba$SHOOTER = as.factor(nba$SHOOTER)
#convertir le type de données en factor
class(nba$PERIOD)
class(nba$PTS_TYPE)
class(nba$SHOOTER)
#vérifier le type de données = factor



lenght(level(nba$Period))
lenght(nba$PTSTYPE)
lenght(nba$SHOTER)
#longueur des colonnes
summary(nba)
#sommaire des données
sd(nba$SHOT_DIST,na.rm=TRUE) 
sd(nba$SHOT_CLOCK,na.rm=TRUE)
# ecart type

     #combien de tirs manqués/réussis
     table(nba$SHOT_RESULT)
     #La fonction table nécessite un vecteur
     
     #les quartiles
     quantile(nba$SHOT_CLOCK, probs =(seq(from=0.25,to=1,by=0.25)),na.rm=TRUE)
     
     #les déciles
     
     quantile(nba$CLOSE_DEF_DIST, probs =(seq(from=0.1,to=1,by=0.1)),na.rm=TRUE)
     
     #nombre de matches différents
     
listegame = unique(nba$GAME_ID)
length(listegame)


#nombre de joueurs différents

nba$SHOOTER <- as.factor(nba$SHOOTER)
nlevels(nba$SHOOTER)
       #conversion de la variable SHOT_DIST en mètre pour que les européens comprennent nos chiffres
       nba$SHOT_DIST_METRE = nba$SHOT_DIST * 0.30
       #nombre de points qu'a rapporté la tentative (0,2 ou 3)
       nba$PTS_MARQUES = ifelse(nba$SHOT_RESULT == "made", yes = nba$PTS_TYPE, 0)
       #On supprime la variable GAME_RESULT car elle n'est pas utile
       nba$GAME_RESULT <- NULL
       
       #création d'un objet sans la première colonne GAME_ID
       df2 <- nba[, -1 ]
       
#Exercice 3
       
#Les 100 tirs réussis ou manqués les plus loin


rm(list=ls())

rang <- order(df$SHOT_DIST, decreasing = TRUE)
df3 <- df[rang, ]
df3 <- df3[ 1 : 100 , ]
View(df3)

#Les 100 tirs réussis les plus loin

df4<-df[rang,]
df4=subset(df4,SHOT_RESULT == "made")
df4<-df4[1:100,]

View(df4)

#Combien de tirs à 3 points a réussi Kobe Bryant ?
df_kobe = subset(df,SHOT_RESULT == "made" & PTS_TYPE == 3 & SHOOTER == "kobe bryant")
nrow(df_kobe)

#Le TOP5 des joueurs qui ont marqués le plus de points dans la saison

df_total <- aggregate(PTS_TYPE ~ SHOOTER, data = df, FUN = sum)
View(df_total)

df_total_tri <- df_total[-order("PTS_TYPE"),]
View(df_total_tri)
df_top5 <-  df_total_tri[  5  ,  ]

#Exercice 4 

# Définition de la fonction pour construire le graphique
build_graph <- function(une_colonne, nom_colonne) {
  # Vérification si la colonne est numérique
  if(is.numeric(une_colonne)) {
    boxplot(une_colonne, main = nom_colonne) # Pas besoin de print pour les graphiques
  } else if(is.factor(une_colonne) || is.character(une_colonne)) {
    # Conversion en facteur si ce n'est pas déjà le cas, utile pour les caractères
    une_colonne <- factor(une_colonne)
    tri <- table(une_colonne)
    barplot(tri, main = nom_colonne)
  }
  # Ajouter un else pour gérer d'autres types éventuels
  else {
    cat("Type de variable non pris en charge pour", nom_colonne, "\n")
  }
}

# Supposons que 'df' est votre dataframe, on déroule la fonction sur chaque colonne du dataframe.
df <- data.frame(...) # Vous devez définir votre dataframe ici

for (colonne in colnames(df)) {
  build_graph(une_colonne = df[[colonne]], nom_colonne = colonne) # Correction de l'indexation et de la typo
}

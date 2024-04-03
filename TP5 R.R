setwd("C:/Users/aguermassi/Downloads/nba")
getwd()

#q2)
fichiers=list.files(,pattern=".csv$",TRUE)
list.files(,pattern=".zip$",TRUE)

library(tools)
print(fichiers[1])
nomf = basename(path = fichiers[1])
nom100ext = file_path_sans_ext(x = nomf)
print(nom100ext)


assign(x = nom100ext, value = read.csv(fichiers[1],sep = ",",dec = "."))
View(common_player_info)

for (fichier in fichiers){
  nomext=file_path_sans_ext(basename(fichier))
  debutT <- Sys.time()
  print(nomext)
  assign(x = nomext, value = read.csv(fichier,sep = ",",dec = "."))
  finT <- Sys.time()
  
  execution_time = debutT - finT
  cat("Durée d'importation : ",nomext, "=" , execution_time , "\n")
}

#Exercice 2

#Q1)

matchnba=subset(team,city=="Los Angeles",select = c("id", "city"))
match2= subset(game, select = c("game_id", "team_id_home"))
matchjoin=merge(matchnba,match2,by.x="id",by.y="team_id_home")

View(matchjoin)
nrow(matchjoin)

#Q2)
dfx=matchjoin
dfy=subset(game_info,select=c("game_id","attendance"))
dmatchjoin=merge(dfx,dfy,by.x="game_id",by.y="game_id",all.x=TRUE)
mean(dmatchjoin$attendance,na.rm=TRUE)
            
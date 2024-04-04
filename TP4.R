#Q1
salaire_net_cadre=function(salairebrut) {
  salaire_net_cadre2t=salairebrut*0.75
  return (salaire_net_cadre2t)}

salaire_net_cadre(salairebrut=2000)

#Q2 & 3
salaire_net_cadre=function(salairebrut=2500,tempstravail=1) {
  salaire_net_cadre2t=salairebrut*0.75*tempstravail
  return (salaire_net_cadre2t)}

salaire_net_cadre()


#q4
salaire_net_cadre=function(salairebrut=2500,tempstravail=1) {
  if (!is.numeric(salairebrut)) {
      return("Erreur la valeur rentrée n'est pas une valeur numérique")
}
salaire_net_cadre2t=salairebrut*0.75*tempstravail
return (salaire_net_cadre2t)
}

salaire_net_cadre(salairebrut = "2000€")
salaire_net_cadre(salairebrut = 2000)

#Q5)

salaire_net_cadre=function(salairebrut=2500,tempstravail=1) {
  if (!is.numeric(salairebrut)) {
    return("Erreur la valeur rentrée n'est pas une valeur numérique")
  }
  if (!is.numeric(tempstravail)) {
    return("Erreur le temps de travail n'est pas numérique")
  }
  if ( ( tempstravail>1) | (tempstravail<0)){
    return("Erreur le temps de travail n'est pas compris entre 0 et 1")
  }
  salaire_net_cadre2t=salairebrut*0.75*tempstravail
  return (salaire_net_cadre2t)
}

salaire_net_cadre(salairebrut = 2000, tempstravail = "100%")
salaire_net_cadre(salairebrut = 2000, tempstravail = 0.8)
salaire_net_cadre(salairebrut = 2000, tempstravail = 100)

#Q6)

salaire_net=function(salairebrut=2500,tempstravail=1,statut) {
  if (statut=="cadre"){
    tauximpot=0.75
    
  }
  if (statut=="non_cadre"){
    tauximpot=0.78
    
  }
  if (!is.numeric(salairebrut)) {
    return("Erreur la valeur rentrée n'est pas une valeur numérique")
  }
  if (!is.numeric(tempstravail)) {
    return("Erreur le temps de travail n'est pas numérique")
  }
  if ( ( tempstravail>1) | (tempstravail<0)){
    return("Erreur le temps de travail n'est pas compris entre 0 et 1")
  }
  salaire_net_cadre2t=salairebrut*tauximpot*tempstravail
    
    
  return (salaire_net_cadre2t)
}

salaire_net(salairebrut = 2000, tempstravail = "90%",statut="cadre")
salaire_net(salairebrut = 2000, tempstravail = 0.6,statut="cadre")
salaire_net(salairebrut = 2000, tempstravail = 25,statut="non_cadre")



#Q7)
salaire_net=function(salairebrut=2500,tempstravail=1,statut) {
  if (statut=="cadre"){
    tauximpot=0.75
    
  }
  if (statut=="non_cadre"){
    tauximpot=0.78
    
  }
  if (!is.numeric(salairebrut)) {
    return("Erreur la valeur rentrée n'est pas une valeur numérique")
  }
  if (!is.numeric(tempstravail)) {
    return("Erreur le temps de travail n'est pas numérique")
  }
  if ( ( tempstravail>1) | (tempstravail<0)){
    return("Erreur le temps de travail n'est pas compris entre 0 et 1")
  }
  salaire_net_cadre2t=salairebrut*tauximpot*tempstravail
  
  #Etape tableau fitctif
  if (salaire_net_avant_impot <= 1591) {
    salaire_net_apres_impot <- salaire_net_avant_impot
  } else if (salaire_net_avant_impot <= 2006) {
    salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.029)
    {else if(salaire) 
    }
    
    
    return (salaire_net_cadre2t)
  }
  
  salaire_net(salairebrut = 2000, tempstravail = "90%",statut="cadre")
  salaire_net(salairebrut = 2000, tempstravail = 0.6,statut="cadre")
  salaire_net(salairebrut = 2000, tempstravail = 25,statut="non_cadre")
  
  
  #Exercice 2
  
  #Q1)
  result = 0
  for (element in c(1,2,3,4,5)) {
    result = result +  element
    print("le resultat est : ",result)
  }

  
#q2)
  
  a=1
  result2=0
  while (result2<=50){
  result2=result2 + a
  print(paste("le résultat est",result2))
  print(paste("le programme s'est arrêté à la valeur : ", a))
  a = a + 1
  }

  #q3)
  
  

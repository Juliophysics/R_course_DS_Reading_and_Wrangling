housing = read.csv("../Data/tema1/BostonHousing.csv")

housing.z =scale(housing)

#lo de arriba es igual a hacer scale(housing, center = TRUE, scale = TRUE)

housing.none = scale(housing, center = F, scale = F)

housing.mean = scale(housing, center = T, scale = F) #desplazado, solo restando

housing.sd = scale(housing, center = F, scale = T) #Dividir por la desv stan

scale.many = function(dataframe,cols){
  names = names(dataframe)
  for(col in cols){
    name = paste(names[col],"z", sep = ".")
    dataframe[name] = scale(dataframe[,col])
  }
  cat(paste("Hemos normalizado", length(cols), "variables(s)"))
  dataframe
}

housing = scale.many(housing, c(1,3, 5:8))

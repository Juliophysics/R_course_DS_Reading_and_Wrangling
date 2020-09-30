data = read.csv("../Data/tema1/missing-data.csv",na.strings = "")
data$Income.mean = ifelse(is.na(data$Income),
                          mean(data$Income,na.rm = TRUE),
                          data$Income
                          )

#x es un vector de datos que puede contener un NA

rand.impute = function(x){
  missing = is.na(x) #vector cn valores T/F dependiendo del NA de x
  n.missing = sum(missing) #cuantos valores son NA, cuantos TRUE
  x.obs = x[!missing] #valores con dato dif de NA en x
  #Por defecto, devolveré lo mismo que había entrado por parámetro
  imputed = x
  #Los valores que faltaban los reemplazamos por una muestra de los que 
  #si conocemos
  imputed[missing] = sample(x.obs, n.missing, replace = TRUE)
  return(imputed)
}

random.impute.data.frame = function(dataframe,cols){
  names = names(dataframe)
  for(col in cols){
    name = paste(names[col], "imputed", sep = ".")
  dataframe[name] = rand.impute(dataframe[,col])
  }
  dataframe

}

data = read.csv("../Data/tema1/missing-data.csv",na.strings = "")
data$Income[data$Income==0]=NA
data = random.impute.data.frame(data, c(1,2))

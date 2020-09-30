install.packages("scales")
library(scales)
students = read.csv("../Data/tema1/data-conversion.csv")

students$Income.rescaled = rescale(students$Income) # si no esta el apartado $ lo crea

(students$Income -min(students$Income))/
  (max(students$Income)-min(students$Income))

rescale(students$Income, to = c(0,100)) #reescalar entre 0 y 100


rescale.many = function(dataframe, cols){
  names = names(dataframe)
  for (col in cols){
    name = paste(names[col],"rescaled", sep = ".")
  dataframe[name] = rescale(dataframe[,col])# todas las filas de col con nombre name
  }
  cat(paste("Hemos reescalado",length(cols),"variable(s)"))
  dataframe #devuelve dataframe
}

students = rescale.many(students, c(1,4))

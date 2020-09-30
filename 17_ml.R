data = read.csv("../Data/tema2/auto-mpg.csv", stringsAsFactors = F)

#Index by position 

data[1:5,8:9]
data[1:5,c(8,9)]

#index by name 

data[1:5, c("model_year", "car_name")]

# &: AND
# |: OR
# ! NOT
## == presencia de un valor?


### Min y max de consumo millas por galeón 
data[data$mpg == max(data$mpg) | data$mpg == min(data$mpg),]


#Filtros con condiciones 

data[data$mpg>30 & data$cylinders == 6,c("car_name","mpg")]

data[data$mpg>30 & data$cyl ==6, c("car_name", "mpg")]

# subset 
subset(data, mpg>30 & cylinders == 6, select = c("car_name", "mpg"))



## Fallos a tener en cuenta 
data[data$mpg>30, ] #olvidarse de la coma


#Excluir columnas 
data[1:5, c(-1,-9)]
data[1:5, -c(1,9)] #excluimos 1, 9 
data[1:5,-c("No", "car_name")] # no se pueden eliminar asi 
data[1:5, !names(data) %in% c("No", "car_name")]

data[data$mpg %in% c(15,20), c("car_name", "mpg")]

data[1:2, c(F, F, T)]

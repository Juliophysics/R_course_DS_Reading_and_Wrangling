data = read.csv("../Data/tema1/missing-data.csv",na.strings = "")#MArca los NA

data.cleaned = na.omit(data)# No toma en cuenta los datos con NA

is.na(data[4,2]) #pregunta NA en [4,2] de data
is.na(data[4,1]) #igual para [4,1]
is.na(data$Income) #Colección de booleanos


#Limpiar los NA de la variable income
data.income.cleaned = data[!is.na(data$Income),]

#Filas llenas de datos completos para un data frame
complete.cases(data)

data.cleaned.2 = data[complete.cases(data), ]#el espacio de todas las columnas
#Convertir los 0's en NA's
data$Income[data$Income == 0] = NA


#Medidas de centralización y dispersión
mean(data$Income)
mean(data$Income,na.rm = TRUE) #sin tomar en cuenta los NA


sd(data$Income)
sd(data$Income, na.rm = TRUE)


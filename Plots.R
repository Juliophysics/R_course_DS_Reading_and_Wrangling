auto = read.csv("../Data/tema2/auto-mpg.csv")

auto$cylinders = factor(auto$cylinders,
                        levels = c(3,4,5,6,8),
                        labels = c("3cil","4cil","5cil","6cil","8cil"))

attach(auto)
head(cylinders)

#Histograma de frecuencias
hist(acceleration,
     col = rainbow(12), 
     xlab = "Aceleraci�n",
     ylab = "Frecuencias", 
     main = "Histograma de las aceleraciones",
     breaks = 12
     )

hist(mpg, breaks =16, prob = T)
lines(density(mpg))

#Boxplots

boxplot(mpg, xlab = "Millas por gale�n")
boxplot(mpg ~ model_year, xlab = "Millas por galeon (por a�o)" )
boxplot(mpg ~ cylinders, xlab ="Consumo por numero de cilindros")
boxplot(auto)

#Scatterplot 
plot(mpg ~ horsepower, type = "n")
linearmodel = lm(mpg~horsepower)
abline(linearmodel)
#Agregar colores para cada cilindrada
with(subset(auto,cylinders == "8cil"),
     points(horsepower,mpg,col = "red"))
with(subset(auto, cylinders =="6cil"),
     points(horsepower,mpg,col = "yellow"))
with(subset(auto, cylinders =="5cil"),
     points(horsepower,mpg,col = "green"))
with(subset(auto, cylinders =="4cil"),
     points(horsepower,mpg,col = "blue"))

with(subset(auto, cylinders =="3cil"),
     points(horsepower,mpg))

#Matriz scatterplots
pairs(~mpg+displacement+horsepower+weight) #hermoso

#Combinaci�n de plots con par
old.par = par()
old.par

par(mfrow = c(1,2))

with(auto, {
  plot(mpg ~weight, main = "peso vs consumo")
  plot(mpg ~ acceleration, main = "Aceleraci�n vs consumo")
})

par(old.par)



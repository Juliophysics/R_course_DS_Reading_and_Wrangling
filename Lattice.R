auto = read.csv("../Data/tema2/auto-mpg.csv", stringsAsFactors = F)
auto$cylinders = factor(auto$cylinders,
                        levels = c(3,4,5,6,8),
                        labels = c("3C", "4c", "5C", "6C","8c"))


bwplot(~ auto$mpg | auto$cylinders,
       main = "MPG según cilindrada", 
       xlab = "Millas por Galeón",
       layout = c(2,3), aspect = 1)

xyplot(mpg~weight | cylinders, data = auto,
       main = "peso vs Consumo vs num of cilindros",
       xlab = "Peso (kg)", ylab = "Consumo (mpg)")
#bwplot, xyplot, densityplot, splom

trellis.par.set(theme = col.whitebg())

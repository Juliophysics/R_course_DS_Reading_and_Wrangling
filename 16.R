data = read.csv("../Data/tema2/auto-mpg.csv",
                header = TRUE,
                stringsAsFactors = FALSE)

data$cylinders = factor(data$cylinders,
                        levels = c(3,4,5,6,8),
                        labels = c("3cil", "4cil","5cil","6cil","8cil"))

summary(data)

str(data)

summary(data$cylinders)
summary(data$mpg)
str(data$cylinders)


install.packages(c("modeest","raster","moments"))
install.packages("modeest")
library(modeest) #moda
library(raster) #quantiles
library(moments)#asimetria, curtosis

#MEdidas de centralizacion 
X = data$mpg

mean(X)  #sum(X)/length(X)
median(X)

quantile(X)
### Medidas de Dispersión 

var(X)
sd(X)
cv(X) #coeficiente de variación sd/mean


#### medidas de asimetria

skewness(X)
moments::kurtosis(X)

par(mfrow = c(1,1))
hist(X)



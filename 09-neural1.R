library(nnet)
library(caret)

bn = read.csv("../Data/tema3/banknote-authentication.csv")
bn$class = factor(bn$class)

t.id = createDataPartition(bn$class, p = 0.7, list = F)

mod = nnet(class ~ ., data = bn[t.id,],
           size = 3, maxit = 10000, decay = 0.001, rang = 0.05,
             na.action = na.omit, skip = T)
#numero de capas de la red, es un calor cercano al numero de variables de entrada
#numero de iteraciones maxima para converger 
#decay controlar el overfitting
#rango especifica el rango de pesos de la red inicial

#rang*max(variables) debe aproximar a 1
apply(bn, 2, max)

pred = predict(mod, newdata = bn[-t.id,], type = "class")
table(bn[-t.id,]$class, pred, dnn = c("Actual", "Predichos"))


pred2 = predict(mod, newdata = bn[-t.id, ], type = "raw")

library(ROCR)
perf = performance(prediction(pred2, bn[-t.id, "class"]), "tpr", "fpr")
plot(perf)

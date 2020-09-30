library(e1071)
library(naivebayes)
library(caret)

#Naive Bayes requiere variables categóricas 
ep = read.csv(("../Data/tema3/electronics-purchase.csv"))

set.seed(2018)
t.ids = createDataPartition(ep$Purchase, p = 0.67, list = F)
mod = naiveBayes(Purchase ~., data = ep[t.ids, ])

pred = predict(mod, ep[-t.ids, ])

tab = table(ep[-t.ids,]$Purchase, pred, dnn = c("Actual", "Predichas"))
confusionMatrix(tab)

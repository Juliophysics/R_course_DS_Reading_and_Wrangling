cp = read.csv("../Data/tema3/college-perf.csv")

cp$Perf = ordered(cp$Perf,
                  levels = c("Low", "Medium", "High"))


cp$Pred = ordered(cp$Pred, 
                  levels = c("Low","Medium", "High"))

table = table(cp$Perf, cp$Pred,
              dnn = c("Actual", "Predicho"))

table

prop.table(table)

round(prop.table(table, 1)*100,2)

round(prop.table(table,2)*100,2)


barplot(table, legend = T,
        xlab = "Valor o nota predicha por el modelo")

mosaicplot(table, main = "Eficiencia del modelo")


summary(table)



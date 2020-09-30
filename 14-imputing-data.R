library(mice)

housing.data = read.csv("../Data/tema1/housing-with-missing-value.csv",
                        header = TRUE,
                        stringsAsFactors = FALSE)


columns = c("ptratio", "rad")

imputed_data = mice(housing.data[,names(housing.data) %in% columns],
                    m = 5,
                    maxit = 50, 
                    method = "pmm",
                    seed = 2018)

# los cuatro metodos son

#ppm-comparación predictiva de medias
# polyreg - regresión logística politomica
# logreg - regresión logística
# polr - modelo de probabilidades proporcionales
View(imputed_data)
summary(imputed_data)



complete.data = mice::complete(imputed_data)

housing.data$ptratio = complete.data$ptratio
housing.data$rad = complete.data$rad
anyNA(housing.data)

housing.data = read.csv("../Data/tema1/housing-with-missing-value.csv",
                        header = TRUE,
                        stringsAsFactors = FALSE)
library(Hmisc)
impute_arg = aregImpute(~ptratio + rad, data = housing.data,n.impute = 5)

impute_arg

impute_arg$imputed$rad




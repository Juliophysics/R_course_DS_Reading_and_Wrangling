dat = read.csv("../Data/tema4/rmse.csv")

rmse = sqrt(mean((dat$price - dat$pred)^2))

plot(dat$price, dat$pred, xlab = "Actual", ylab = "Pred")
abline(0,1)

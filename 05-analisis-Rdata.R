clientes = c("chivo","perri","chiquilin")
fechas = as.Date(c("2017-12-27","2017-11-1","2018-1-1"))
pago = c(315,193.55,0.5)
pedidos = data.frame(clientes,fechas,pago) #crear el data frame

save(pedidos, file="../Data/tema1/pedidossuaves.Rdata")

saveRDS(pedidos,file = "../Data/tema1/pedidossuaves.rds")

load("../Data/tema1/pedidos.Rdata") #se carga en el objeto pedidos

orders = readRDS("../Data/tema1/pedidos.rds") #se carga en orders, diferente a load

data(iris)        
data(cars)
View(iris)
View(cars)

save.image(file="../Data/tema1/alldata.Rdata")#GUARDA OBJETOS

primes = c(2,3,5,7,11,13)
pow2 = c(2,4,8,16,32,64,128)
save(list = c("primes","pow2"),file = "../Data/tema1/primes_and_pow2.Rdata")#guardas las dos en f string

attach("../Data/tema1/primes_and_pow2.Rdata")
data()

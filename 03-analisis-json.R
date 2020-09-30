library(jsonlite)

dat.1 = fromJSON("../Data/tema1/students.json")
dat.2 = fromJSON("../Data/tema1/student-courses.json")

url = "http://www.floatrates.com/daily/usd.json"
library(curl)
currencies = fromJSON(url)
currency.data = currencies$eur


head(dat.1,3)
dat.1$Email

currency.data[1:2] #currency.data[1:2,3:5] por ejemplo otro arreglo

#tojson psar un fichero a formato json
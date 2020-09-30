auto = read.csv("../Data/tema1/auto-mpg.csv",
                header = TRUE, sep = ",",strings.na = "NA",
                stringsAsFactors = FALSE)
names(auto)

#read.csv2 == read.csv("filename", sep = ";",dec = ",")
#para separar con tabulador se utiliza #sep="t"

auto_no_header = read.csv("../Data/tema1/auto-mpg-noheader.csv",header = FALSE)
head(auto_no_header,4)                          

auto_non_sense = read.csv("../Data/tema1/auto-mpg-noheader.csv")
head(auto_non_sense,4)    

auto_custom_header = read.csv("../Data/tema1/auto-mpg-noheader.csv", header = F,col.names = c("numero","millas_por_galeon", "cilindrada",
                                                                                              "desplazamiento","caballos de potencia",
                                                                                              "peso","aceleración","año","modelo")
                              )
head(auto_custom_header, 2)

#cargar datos de internet

who_from_internet = read.csv("https://frogames.es/course-contents/r/intro/tema1/WHO.csv")


#NA : not available
#na.strings=""
#as.character()

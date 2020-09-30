students_data = read.fwf("../data/tema1/student-fwf.txt",
                         widths=c(4,15,20,15,4),
                         col.names = c("id","nombre","email",
                                       "carrera","año")
                         ) #leer datos ancho fijo, de un txt

students_data_header = read.fwf("../Data/tema1/student-fwf-header.txt",
                                widths = c(4,15,20,15,4),
                                header = TRUE, sep = "\t",
                                skip = 2) #checar lo que hace salta 2, sep del header= tabulador

                                
students_data_noemail = read.fwf("../data/tema1/student-fwf.txt",
                                 widths=c(4,15,-20,15,4),
                                 col.names = c("id","email",
                                               "carrera","año")
)#saltar longitud, poniendola negativa


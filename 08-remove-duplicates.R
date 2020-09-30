family.salary = c(40000, 60000, 50000, 80000, 60000, 70000, 60000)
family.size = c(4,3,2,2,3,4,3)
family.car = c("Lujo", "Compacto", "Utilitario", "Lujo",
               "Compacto", "Compacto","Compacto")

family = data.frame(family.salary, family.size, family.car)

unique(family) #Si hay duplicados, solo muestra uno

family.unique = unique(family) 

#Detectar las duplicaciones

duplicated(family) #Devuelve en booleano las duplicadas como TRUE, desde la segunda ocurrencia 

family[duplicated(family),]


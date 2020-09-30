library(XML)

url = "../Data/tema1/cd_catalog.xml"

xmldoc = xmlParse(url) #XMLInternalDocument...crea apuntador, posición de memoria que localiza el doc
rootnode = xmlRoot(xmldoc) #ese documento tiene varios nodos,nos coloca en NODO RAIZ, falta acceder
rootnode[1]

cds_data = xmlSApply(rootnode, function(x) xmlSApply(x, xmlValue) ) #extraer todos los datos del xml, data frame
cds.catalog = data.frame(t(cds_data), row.names = NULL) #Formato data frame
head(cds.catalog, 2)
cds.catalog[1:5,]

#xpathSApply()
#getNodeSet()  son importantes para acceso a datos en un XML


population_url = "../Data/tema1/WorldPopulation-wiki.htm"
tables = readHTMLTable(population_url) #Accede a una lista de tablas desde la url 

most_populated = tables[[6]] #la sexta tabla
head(most_populated,3)
custom_table = readHTMLTable(population_url, which = 6) #entrar a una tabla en específico desde la url 


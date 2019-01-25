# LEER ARCHIVOS ASCII
# TIPO 1: solo datos
tusDatos <- read.table(file.choose(), skip = 0, header = FALSE, sep =',')
tusDatos <- read.table("C:/Users/User/Desktop/estacion meteorologica/Rscrips/Ejemplo de importación de datos/ejemplo-datos.txt", skip = 0, header = FALSE, sep =',')


# TIPO 2: encabezado una linea + datos
tusDatos <- read.table(file.choose(), skip = 0, header = TRUE, sep =',')

# TIPO 3: encabezado raro + datos
tusDatos <- read.table(file.choose(), skip = 8, header = TRUE, sep =',')


# LEER ARCHIVOS EXCEL
# OPCI0N 1. COPY PASTE TiPICO
datos<- read.table(file = "clipboard", sep = "\t", header=TRUE)
datos

# OPCI?N 2. DIRECTAMENTE DE EXCEL
# Instalar el paquete 'readxls' el paquete m?s pr?ctico para leer ficheros Excel
install.packages("readxl")
# Leer el paquete
library("readxl")

# Puedes leer la hoja poniendo el nombre

misDatos <- read_xlsx(file.choose(), sheet = "Hoja1")

# Puedes leer la hoja n?mero 1. La primera de todas
misDatos <- read_excel(file.choose(), sheet = 1)

# DESDE INTERNET
El_nino <- read.csv("ftp://ftp.cpc.ncep.noaa.gov/wd53du/sstcon34t.txt")
El_nino

# el archivo el nino es de tipo TIPO 3: encabezado raro + datos
#quitamos las dos primeras lineas con skip
El_nino <- read.csv("ftp://ftp.cpc.ncep.noaa.gov/wd53du/sstcon34t.txt", skip = 2, sep = "")
El_nino

names(El_nino)<- c("trim","BELOW","NORMAL","ABOVE","BELOW","NORMAL","ABOVE","DEGC","anomaly" )
El_nino
a<- 1:length(El_nino$anomaly)
a
plot(a, El_nino$anomaly, type = "b")

##Cargar librerías a usar
library(dplyr)
library(ggplot2)
library()

##Cargar BDs a usar
#MRUN estudiantes EFIES, incluye datos desde el 2017 al 2020
mrun_efies <- read.csv("Estudiantes a solicitar datos Formando Chile_MRUN.csv",sep = ";", fileEncoding = "UTF-8-BOM")
#MAtriculas en Educación superior 2021
bd_matriculas_2021 <- read.csv("20211812_Matrícula_Ed_Superior_2021_PUBL_MRUN.csv",sep = ";", fileEncoding = "UTF-8-BOM")
#Asignaciones de becas y beneficios
asignaciones <- read.csv("asignacion 2020_WEB.csv",sep = ";", fileEncoding = "UTF-8-BOM")
#NEM y percentiles
NEM <- read.csv("20210610_NEM_PERCENTILES_JOVENES_2020_20210530_PUBL.csv",sep = ";", fileEncoding = "UTF-8-BOM")
#Rendimiento escular
rendim_esc <- read.csv("20210223_Rendimiento_2020_20210131_WEB.csv",sep = ";", fileEncoding = "UTF-8-BOM")


names(mrun_efies)[1]<- "MRUN"



###Cruces bases de datos
# 1.- Cruce de 
bd <- left_join(mrun_efies,bd_matriculas_2021,by="MRUN")


b2 <- left_join(mrun_efies,asignaciones,by="MRUN")
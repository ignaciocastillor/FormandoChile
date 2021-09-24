library(dplyr)

mrun_efies <- read.csv("Estudiantes a solicitar datos Formando Chile_MRUN.csv",sep = ";", fileEncoding = "UTF-8-BOM")
bd_matriculas_2021 <- read.csv("20211812_Matrícula_Ed_Superior_2021_PUBL_MRUN.csv",sep = ";", fileEncoding = "UTF-8-BOM")
asignaciones <- read.csv("asignacion 2020_WEB.csv",sep = ";", fileEncoding = "UTF-8-BOM")
names(mrun_efies)[1]<- "MRUN"


bd <- left_join(mrun_efies,bd_matriculas_2021,by="MRUN")


b2 <- left_join(mrun_efies,asignaciones,by="MRUN")
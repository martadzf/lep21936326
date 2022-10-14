# ID SCRIPT ---------------------------------------------------------------


## LENGUAJES DE PROGRAMACIÓN ESTADÍSTICA
## PROFESOR: CHRISTIAN SUCUZHANAY AREVALO
## ALUMNO: MARTA DÍAZ, EXP 21936326
## EXAMEN

# LOADING LIBS ------------------------------------------------------------
library (tidyverse)
library(httr)
library(janitor)
library(pacman)
library(jsonlite)

# READING DATA ------------------------------------------------------------
df_raw <- read_csv("catastro-sample.csv")

#Ver config
locale() 

#Cambaimos config y limpiamos
df1 <- df_raw %>% janitor::clean_names() %>% type_convert(locale = locale(decimal_mark = ","))

# CREAR NUEVA COLUMNA ------------------------------------------------------------
df_turist <- df1 %>% mutate(piso_turistico = floor %in% c("00"))





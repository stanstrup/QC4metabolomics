# Libraries ---------------------------------------------------------------
library(stringr)
library(ini)
library(dplyr)
library(magrittr)
library(DBI)
library(RMySQL)
library(pool) # devtools::install_github("rstudio/pool")   
library(tools)
 
library(MetabolomiQCsR)
setwd("Modules/File_info")

source("get_settings.R", local = TRUE)
source("parse_files.R", local = TRUE)

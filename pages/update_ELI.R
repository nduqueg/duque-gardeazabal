rm(list = ls())
cat("\014")

library(raster)
library(ncdf4)
"%>%" = magrittr::'%>%'

## download current monthly value ----
ersst_url <- "https://www.ncei.noaa.gov/pub/data/cmb/ersst/v5/netcdf/"

list.files(pattern = "\\.nc") %>% file.remove()

today <- Sys.time() %>% as.POSIXlt()
today$mon <- today$mon -1
f.today <- substr(today,1,7) %>% gsub("-","",.) %>% paste0("ersst.v5.",.,".nc")

download.file(paste0(ersst_url,f.today), 
              "SST_today.nc",
              mode = "wb") # important command in windows

## calculate ELI ----

SST <- brick("SST_today.nc", varname="sst")

# Convection Treshold
SST.Tres <- SST %>% 
  crop(.,extent(c(0,360,-5,5))) %>% cellStats(., stat="mean",na.rm=T)

Coord.E <- SST %>% crop(.,extent(c(0,360,-5,5))) %>% 
  rasterToPoints(.) %>% .[,-3]

# SST values above threshold for convection
SST.c <- crop(SST,extent(c(0,360,-5,5))) %>% 
  rasterToPoints(.) %>% .[,-c(1,2)]

cells.above <- SST.c >= SST.Tres

# ELI calculation
ELI <- Coord.E[ cells.above ,1] %>% 
  .[. >=115 & . <=360-70] %>% 
  mean()

write.csv(ELI, "Current_ELI.csv", col.names = F, row.names = F)

## update value on webpage ----
a <- readLines("../index.md")

find <- grep("**Current El Niño Longitude Index (ELI)", a, fixed = T) %>% as.nuneric()
b <- read.csv("Current_ELI.csv",header=T)

substr(a[ find ], 43, 47) <- as.character(b)
substr(a[ find ], 57, 66) <- as.character(today)

write.table(a,"../index.md",row.names = F,col.names = F,quote = F)

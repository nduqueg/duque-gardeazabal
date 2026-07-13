rm(list = ls())
cat("\014")

a <- readLines("../index.md")

find <- grep("**Current El Niño Longitude Index (ELI)", a, fixed = T)
b <- read.csv("Current_ELI.csv",header=F)

substr(a[ as.numeric(find) ],43,47) <- as.character(b)
substr(a[ as.numeric(find) ],57,66) <- as.character(Sys.Date())

write.table(a,"../index.md",row.names = F,col.names = F,quote = F)

##########################   
####Cleanup####

detach(data)  
rm(list=ls(all=TRUE))
par(mfrow=c(1,1)) 

###################
###################


library(meteR)
#devtools::install_github('ajrominger/socorro')
#library(socorro)



## load data
setwd("~/Desktop/R_scripts/Restinga/R_inputs")
res2015<- read.csv("Restinga_2015_METE_v23APR2018.csv", header=TRUE)
res2016<- read.csv("Restinga_2016_METE_v23APR2018.csv", header=TRUE)

class(res2015)
clean1_2015 <- na.omit(res2015)
dim(clean1_2015)
df <- clean1_2015
clean2_2015 <- df[df$SP !="DIED",]
res2015 <- clean2_2015
res2015 <- as.data.frame(res2015)
dim(res2015)

dim(res2016)
clean1_2016 <- na.omit(res2016)
dim(clean1_2016)
df2 <- clean1_2016
clean2_2016 <- df2[df2$SP !="DIED",]
res2016 <- clean2_2016
dim(res2016)

class(res2015$DBH)
class(res2016$DBH)
res2016$DBH <- as.numeric(res2016$DBH)
class(res2016$DBH)
#as.numeric(paste(res2016$DBH))


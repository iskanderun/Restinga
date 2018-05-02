
##########################   
####Cleanup####

detach(data)  
rm(list=ls(all=TRUE))
par(mfrow=c(1,1)) 

###################
###################

setwd("~/Desktop/R_scripts/Restinga/R_inputs")
my.data <- read.csv("Restinga_state_variables.csv", header=TRUE)

attach(my.data)
flo_2015 <- my.data[which(env=='FLO' & year == 2015),]
flo_2016 <- my.data[which(env=='FLO' & year == 2016),]
int_2015 <- my.data[which(env=='INT' & year == 2015),]
int_2016 <- my.data[which(env=='INT' & year == 2016),]
dry_2015 <- my.data[which(env=='DRY' & year == 2015),]
dry_2016 <- my.data[which(env=='DRY' & year == 2016),]
detach(my.data)


## plot some of these
require(ggplot2)
library(ggplot2)

myp <- ggplot(flo_2015, aes(sing_obs, sing_pred))
myp <- myp +  geom_smooth(method='lm')
myp <- myp + theme_bw()
myp <- myp + labs(x = "Observed singletons", y = "Predicted singletons")
myp <- myp + geom_smooth(method='lm', data = flo_2016, color = 'light green')
myp <- myp + xlim(0,8) + ylim(0,8)
myp <- myp + theme(axis.title=element_text(size=10))
myp <- myp + ggtitle("(A) Floodable") +
  theme(plot.title = element_text(size=12))
myp

myp2 <- ggplot(int_2015, aes(sing_obs, sing_pred))
myp2 <- myp2 +  geom_smooth(method='lm')
myp2 <- myp2 + theme_bw()
myp2 <- myp2 + labs(x = "Observed singletons", y = "Predicted singletons")
myp2 <- myp2 + geom_smooth(method='lm', data = int_2016, color = 'light green')
myp2 <- myp2 + xlim(0,13) + ylim(0,13)
myp2 <- myp2 + theme(axis.title=element_text(size=10))
myp2 <- myp2 + ggtitle("(B) Intermediate") +
  theme(plot.title = element_text(size=12))
myp2

myp3 <- ggplot(dry_2015, aes(sing_obs, sing_pred))
myp3 <- myp3 +  geom_smooth(method='lm')
myp3 <- myp3 + theme_bw()
myp3 <- myp3 + labs(x = "Observed singletons", y = "Predicted singletons")
myp3 <- myp3 + geom_smooth(method='lm', data = dry_2016, color = 'light green')
myp3 <- myp3 + xlim(0,16) + ylim(0,16)
myp3 <- myp3 + theme(axis.title=element_text(size=10))
myp3 <- myp3 + ggtitle("(C) Dry") +
  theme(plot.title = element_text(size=12))
myp3


myp4 <- ggplot(flo_2015, aes(max_obs, max_pred))
myp4 <- myp4 +  geom_smooth(method='lm')
myp4 <- myp4 + theme_bw()
myp4 <- myp4 + labs(x = "Observed max. abund.", y = "Predicted max. abund.")
myp4 <- myp4 + geom_smooth(method='lm', data = flo_2016, color = 'light green')
myp4 <- myp4 + xlim(0,25) + ylim(0,25)
myp4 <- myp4 + theme(axis.title=element_text(size=10))
myp4 <- myp4 + ggtitle("(D) Floodable") +
  theme(plot.title = element_text(size=12))
myp4

myp5 <- ggplot(int_2015, aes(max_obs, max_pred))
myp5 <- myp5 +  geom_smooth(method='lm')
myp5 <- myp5 + theme_bw()
myp5 <- myp5 + labs(x = "Observed max. abund.", y = "Predicted max. abund.")
myp5 <- myp5 + geom_smooth(method='lm', data = int_2016, color = 'light green')
myp5 <- myp5 + xlim(0,10) + ylim(0,10)
myp5 <- myp5 + theme(axis.title=element_text(size=10))
myp5 <- myp5 + ggtitle("(E) Intermediate") +
  theme(plot.title = element_text(size=12))
myp5

myp6 <- ggplot(dry_2015, aes(max_obs, max_pred))
myp6 <- myp6 +  geom_smooth(method='lm', alpha=0.5)
myp6 <- myp6 + theme_bw()
myp6 <- myp6 + labs(x = "Observed max. abund.", y = "Predicted max. abund.")
myp6 <- myp6 + geom_smooth(method='lm', data = dry_2016, color = 'lightgreen', alpha=0.5)
myp6 <- myp6 + xlim(0,16) + ylim(0,16)
myp6 <- myp6 + theme(axis.title=element_text(size=10))
myp6 <- myp6 + ggtitle("(F) Dry") +
               theme(plot.title = element_text(size=12))

multiplot(myp, myp4, myp2, myp5, myp3, myp6, cols = 3)


###MAKE A LEGEND, I HOPE
require(plotrix) 
# get some extra room
par(mar=c(7,4,4,6))
par(mar=c(3,1,3,7))
testcol<-c("light green", "blue")
col.labels<-c("2016", "2015")
color2D.matplot(matrix(rnorm(100),nrow=10),c(1,0),0,c(0,1),
                main="Test color legends")
#color.legend(11,6,11.8,9,col.labels,testcol,gradient="y")
color.legend(10.2,0.5,11,5,col.labels,testcol,align="rb",gradient="y")


#par(mar=c(1,1,3,7))


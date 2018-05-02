
setwd("~/Desktop/R_scripts/Restinga/R_outputs")


library(meteR)
#devtools::install_github('ajrominger/socorro')
#library(socorro)

## make subsetted data

##Floodable data first
FLO.1.L1.2015 <-res2015[res2015$PLOT == "1_L1",]
df101 <- data.frame(FLO.1.L1.2015)
FLO.1.L1.2016 <-res2016[res2016$PLOT == "1_L1",]
df102 <- FLO.1.L1.2016

FLO.2.L1.2015 <-res2015[res2015$PLOT == "2_L1",]
df103 <- FLO.2.L1.2015
FLO.2.L1.2016 <-res2016[res2016$PLOT == "2_L1",]
df104 <- FLO.2.L1.2016

FLO.1.L2.2015 <-res2015[res2015$PLOT == "1_L2",]
df105 <- FLO.1.L2.2015
FLO.1.L2.2016 <-res2016[res2016$PLOT == "1_L2",]
df106 <- FLO.1.L2.2016

FLO.2.L2.2015 <-res2015[res2015$PLOT == "2_L2",]
df107 <- FLO.2.L2.2015
FLO.2.L2.2016 <-res2016[res2016$PLOT == "2_L2",]
df108 <- FLO.2.L2.2016

FLO.1.L3.2015 <-res2015[res2015$PLOT == "1_L3",]
df109 <- FLO.1.L3.2015
FLO.1.L3.2016 <-res2016[res2016$PLOT == "1_L3",]
df110 <- FLO.1.L3.2016

FLO.2.L3.2015 <-res2015[res2015$PLOT == "2_L3",]
df111 <- FLO.2.L3.2015
FLO.2.L3.2016 <-res2016[res2016$PLOT == "2_L3",]
df112 <- FLO.2.L3.2016

FLO.1.L4.2015 <-res2015[res2015$PLOT == "1_L4",]
df113 <- FLO.1.L4.2015
FLO.1.L4.2016 <-res2016[res2016$PLOT == "1_L4",]
df114 <- FLO.1.L4.2016

FLO.2.L4.2015 <-res2015[res2015$PLOT == "2_L4",]
df115 <- FLO.2.L4.2015
FLO.2.L4.2016 <-res2016[res2016$PLOT == "2_L4",]
df116 <- FLO.2.L4.2016

FLO.1.L5.2015 <-res2015[res2015$PLOT == "1_L5",]
df117 <- FLO.1.L5.2015
FLO.1.L5.2016 <-res2016[res2016$PLOT == "1_L5",]
df118 <- FLO.1.L5.2016

FLO.2.L5.2015 <-res2015[res2015$PLOT == "2_L5",]
df119 <- FLO.2.L5.2015
FLO.2.L5.2016 <-res2016[res2016$PLOT == "2_L5",]
df120 <- FLO.2.L5.2016

FLO.1.L6.2015 <-res2015[res2015$PLOT == "1_L6",]
df121 <- FLO.1.L6.2015
FLO.1.L6.2016 <-res2016[res2016$PLOT == "1_L6",]
df122 <- FLO.1.L6.2016

FLO.2.L6.2015 <-res2015[res2015$PLOT == "2_L6",]
df123 <- FLO.2.L6.2015
FLO.2.L6.2016 <-res2016[res2016$PLOT == "2_L6",]
df124 <- FLO.2.L6.2016

FLO.1.L7.2015 <-res2015[res2015$PLOT == "1_L7",]
df125 <- FLO.1.L7.2015
FLO.1.L7.2016 <-res2016[res2016$PLOT == "1_L7",]
df126 <- FLO.1.L7.2016

FLO.2.L7.2015 <-res2015[res2015$PLOT == "2_L7",]
df127 <- FLO.2.L7.2015
FLO.2.L7.2016 <-res2016[res2016$PLOT == "2_L7",]
df128 <- FLO.2.L7.2016

## make METE objects

#floodable first

#make ESFs

df101.ESF <- meteESF(spp = df101$SP, abund = df101$COUNT, power = df101$DBH^2)
df102.ESF <- meteESF(spp = df102$SP, abund = df102$COUNT, power = df102$DBH^2)
df103.ESF <- meteESF(spp = df103$SP, abund = df103$COUNT, power = df103$DBH^2)
df104.ESF <- meteESF(spp = df104$SP, abund = df104$COUNT, power = df104$DBH^2)
df105.ESF <- meteESF(spp = df105$SP, abund = df105$COUNT, power = df105$DBH^2)
df106.ESF <- meteESF(spp = df106$SP, abund = df106$COUNT, power = df106$DBH^2)
df107.ESF <- meteESF(spp = df107$SP, abund = df107$COUNT, power = df107$DBH^2)
df108.ESF <- meteESF(spp = df108$SP, abund = df108$COUNT, power = df108$DBH^2)
df109.ESF <- meteESF(spp = df109$SP, abund = df109$COUNT, power = df109$DBH^2)
df110.ESF <- meteESF(spp = df110$SP, abund = df110$COUNT, power = df110$DBH^2)
df111.ESF <- meteESF(spp = df111$SP, abund = df111$COUNT, power = df111$DBH^2)
df112.ESF <- meteESF(spp = df112$SP, abund = df112$COUNT, power = df112$DBH^2)
df113.ESF <- meteESF(spp = df113$SP, abund = df113$COUNT, power = df113$DBH^2)
df114.ESF <- meteESF(spp = df114$SP, abund = df114$COUNT, power = df114$DBH^2)
df115.ESF <- meteESF(spp = df115$SP, abund = df115$COUNT, power = df115$DBH^2)
df116.ESF <- meteESF(spp = df116$SP, abund = df116$COUNT, power = df116$DBH^2)
df117.ESF <- meteESF(spp = df117$SP, abund = df117$COUNT, power = df117$DBH^2)
df118.ESF <- meteESF(spp = df118$SP, abund = df118$COUNT, power = df118$DBH^2)
df119.ESF <- meteESF(spp = df119$SP, abund = df119$COUNT, power = df119$DBH^2)
df120.ESF <- meteESF(spp = df120$SP, abund = df120$COUNT, power = df120$DBH^2)
df121.ESF <- meteESF(spp = df121$SP, abund = df121$COUNT, power = df121$DBH^2)
df122.ESF <- meteESF(spp = df122$SP, abund = df122$COUNT, power = df122$DBH^2)
df123.ESF <- meteESF(spp = df123$SP, abund = df123$COUNT, power = df123$DBH^2)
df124.ESF <- meteESF(spp = df124$SP, abund = df124$COUNT, power = df124$DBH^2)
df125.ESF <- meteESF(spp = df125$SP, abund = df125$COUNT, power = df125$DBH^2)
df126.ESF <- meteESF(spp = df126$SP, abund = df126$COUNT, power = df126$DBH^2)
df127.ESF <- meteESF(spp = df127$SP, abund = df127$COUNT, power = df127$DBH^2)
df128.ESF <- meteESF(spp = df128$SP, abund = df128$COUNT, power = df128$DBH^2)

# make IPDs from ESF objects

df101.IPD <- ipd(df101.ESF)
df102.IPD <- ipd(df102.ESF)
df103.IPD <- ipd(df103.ESF)
df104.IPD <- ipd(df104.ESF)
df105.IPD <- ipd(df105.ESF)
df106.IPD <- ipd(df106.ESF)
df107.IPD <- ipd(df107.ESF)
df108.IPD <- ipd(df108.ESF)
df109.IPD <- ipd(df109.ESF)
df110.IPD <- ipd(df110.ESF)
df111.IPD <- ipd(df111.ESF)
df112.IPD <- ipd(df112.ESF)
df113.IPD <- ipd(df113.ESF)
df114.IPD <- ipd(df114.ESF)
df115.IPD <- ipd(df115.ESF)
df116.IPD <- ipd(df116.ESF)
df117.IPD <- ipd(df117.ESF)
df118.IPD <- ipd(df118.ESF)
df119.IPD <- ipd(df119.ESF)
df120.IPD <- ipd(df120.ESF)
df121.IPD <- ipd(df121.ESF)
df122.IPD <- ipd(df122.ESF)
df123.IPD <- ipd(df123.ESF)
df124.IPD <- ipd(df124.ESF)
df125.IPD <- ipd(df125.ESF)
df126.IPD <- ipd(df126.ESF)
df127.IPD <- ipd(df127.ESF)
df128.IPD <- ipd(df128.ESF)

##graphing loop

all.data <- c("df101.IPD", "df102.IPD", "df103.IPD", "df104.IPD",
              "df105.IPD", "df106.IPD", "df107.IPD", "df108.IPD",
              "df109.IPD", "df110.IPD", "df111.IPD", "df112.IPD",
              "df113.IPD", "df114.IPD", "df115.IPD", "df116.IPD",
              "df117.IPD", "df118.IPD", "df119.IPD", "df120.IPD",
              "df121.IPD", "df122.IPD", "df123.IPD", "df124.IPD",
              "df125.IPD", "df126.IPD", "df127.IPD", "df128.IPD"
              )

for(i in 1:length(all.data)){
  ipd_i<-all.data[i]
  pdf(paste("flo",ipd_i,".pdf", collapse = ""), width = 5, height = 5)
  plot(get(ipd_i), log = 'xy', axes = FALSE, ylim=c(0.0001,1))
  logAxis(1)
  logAxis(2)
  box()
  dev.off()  
}

i <- all.data[i]




##PLOT RAD
for(i in 1:length(all.data)){
  ipd_i<-all.data[i]
  pdf(paste("RAD","flo", ipd_i,".pdf", collapse = ''), width = 5, height = 5)
  plot(get(ipd_i), ptype = 'rad', log = 'xy', 
       xaxt = 'n', yaxt = 'n', xlab = '', ylab = '',
       ylim = c(1, 20000),xlim= c(1,60))
  logAxis(1, expLab = TRUE)
  logAxis(2, expLab = TRUE)
  box()
  dev.off()  
}




##

setwd("~/Desktop/R_scripts/Restinga/R_outputs")

##intermediate data
INT.3.L1.2015 <-res2015[res2015$PLOT == "3_L1",]
df201 <- INT.3.L1.2015
INT.3.L1.2016 <-res2016[res2016$PLOT == "3_L1",]
df202 <- INT.3.L1.2016

INT.4.L1.2015 <-res2015[res2015$PLOT == "4_L1",]
df203 <- INT.4.L1.2015
INT.4.L1.2016 <-res2016[res2016$PLOT == "4_L1",]
df204 <- INT.4.L1.2016

INT.3.L2.2015 <-res2015[res2015$PLOT == "3_L2",]
df205 <- INT.3.L2.2015
INT.3.L2.2016 <-res2016[res2016$PLOT == "3_L2",]
df206 <- INT.3.L2.2016

INT.4.L2.2015 <-res2015[res2015$PLOT == "4_L2",]
df207 <- INT.4.L2.2015
INT.4.L2.2016 <-res2016[res2016$PLOT == "4_L2",]
df208 <- INT.4.L2.2016

INT.3.L3.2015 <-res2015[res2015$PLOT == "3_L3",]
df209 <- INT.3.L3.2015
INT.3.L3.2016 <-res2016[res2016$PLOT == "3_L3",]
df210 <- INT.3.L3.2016

INT.4.L3.2015 <-res2015[res2015$PLOT == "4_L3",]
df211 <- INT.4.L3.2015
INT.4.L3.2016 <-res2016[res2016$PLOT == "4_L3",]
df212 <- INT.4.L3.2016

INT.3.L4.2015 <-res2015[res2015$PLOT == "3_L4",]
df213 <- INT.3.L4.2015
INT.3.L4.2016 <-res2016[res2016$PLOT == "3_L4",]
df214 <- INT.3.L4.2016

INT.4.L4.2015 <-res2015[res2015$PLOT == "4_L4",]
df215 <- INT.4.L4.2015
INT.4.L4.2016 <-res2016[res2016$PLOT == "4_L4",]
df216 <- INT.4.L4.2016

INT.3.L5.2015 <-res2015[res2015$PLOT == "3_L5",]
df217 <- INT.3.L5.2015
INT.3.L5.2016 <-res2016[res2016$PLOT == "3_L5",]
df218 <- INT.3.L5.2016

INT.4.L5.2015 <-res2015[res2015$PLOT == "4_L5",]
df219 <- INT.4.L5.2015
INT.4.L5.2016 <-res2016[res2016$PLOT == "4_L5",]
df220 <- INT.4.L5.2016

INT.3.L6.2015 <-res2015[res2015$PLOT == "3_L6",]
df221 <- INT.3.L6.2015
INT.3.L6.2016 <-res2016[res2016$PLOT == "3_L6",]
df222 <- INT.3.L6.2016

INT.4.L6.2015 <-res2015[res2015$PLOT == "4_L6",]
df223 <- INT.4.L6.2015
INT.4.L6.2016 <-res2016[res2016$PLOT == "4_L6",]
df224 <- INT.4.L6.2016

INT.3.L7.2015 <-res2015[res2015$PLOT == "3_L7",]
df225 <- INT.3.L7.2015
INT.3.L7.2016 <-res2016[res2016$PLOT == "3_L7",]
df226 <- INT.3.L7.2016

INT.4.L7.2015 <-res2015[res2015$PLOT == "4_L7",]
df227 <- INT.4.L7.2015
INT.4.L7.2016 <-res2016[res2016$PLOT == "4_L7",]
df228 <- INT.4.L7.2016

## make METE objects

#intermediate second
intdf201.ESF <- meteESF(spp = df201$SP, abund = df201$COUNT, power = df201$DBH^2)
intdf202.ESF <- meteESF(spp = df202$SP, abund = df202$COUNT, power = df202$DBH^2)
intdf203.ESF <- meteESF(spp = df203$SP, abund = df203$COUNT, power = df203$DBH^2)
intdf204.ESF <- meteESF(spp = df204$SP, abund = df204$COUNT, power = df204$DBH^2)
intdf205.ESF <- meteESF(spp = df205$SP, abund = df205$COUNT, power = df205$DBH^2)
intdf206.ESF <- meteESF(spp = df206$SP, abund = df206$COUNT, power = df206$DBH^2)
intdf207.ESF <- meteESF(spp = df207$SP, abund = df207$COUNT, power = df207$DBH^2)
intdf208.ESF <- meteESF(spp = df208$SP, abund = df208$COUNT, power = df208$DBH^2)
intdf209.ESF <- meteESF(spp = df209$SP, abund = df209$COUNT, power = df209$DBH^2)
intdf210.ESF <- meteESF(spp = df210$SP, abund = df210$COUNT, power = df210$DBH^2)
intdf211.ESF <- meteESF(spp = df211$SP, abund = df211$COUNT, power = df211$DBH^2)
intdf212.ESF <- meteESF(spp = df212$SP, abund = df212$COUNT, power = df212$DBH^2)
intdf213.ESF <- meteESF(spp = df213$SP, abund = df213$COUNT, power = df213$DBH^2)
intdf214.ESF <- meteESF(spp = df214$SP, abund = df214$COUNT, power = df214$DBH^2)
intdf215.ESF <- meteESF(spp = df215$SP, abund = df215$COUNT, power = df215$DBH^2)
intdf216.ESF <- meteESF(spp = df216$SP, abund = df216$COUNT, power = df216$DBH^2)
intdf217.ESF <- meteESF(spp = df217$SP, abund = df217$COUNT, power = df217$DBH^2)
intdf218.ESF <- meteESF(spp = df218$SP, abund = df218$COUNT, power = df218$DBH^2)
intdf219.ESF <- meteESF(spp = df219$SP, abund = df219$COUNT, power = df219$DBH^2)
intdf220.ESF <- meteESF(spp = df220$SP, abund = df220$COUNT, power = df220$DBH^2)
intdf221.ESF <- meteESF(spp = df221$SP, abund = df221$COUNT, power = df221$DBH^2)
intdf222.ESF <- meteESF(spp = df222$SP, abund = df222$COUNT, power = df222$DBH^2)
intdf223.ESF <- meteESF(spp = df223$SP, abund = df223$COUNT, power = df223$DBH^2)
intdf224.ESF <- meteESF(spp = df224$SP, abund = df224$COUNT, power = df224$DBH^2)
intdf225.ESF <- meteESF(spp = df225$SP, abund = df225$COUNT, power = df225$DBH^2)
intdf226.ESF <- meteESF(spp = df226$SP, abund = df226$COUNT, power = df226$DBH^2)
intdf227.ESF <- meteESF(spp = df227$SP, abund = df227$COUNT, power = df227$DBH^2)
intdf228.ESF <- meteESF(spp = df228$SP, abund = df228$COUNT, power = df228$DBH^2)


##make IPDs
intdf201.IPD <- ipd(intdf201.ESF)
intdf202.IPD <- ipd(intdf202.ESF)
intdf203.IPD <- ipd(intdf203.ESF)
intdf204.IPD <- ipd(intdf204.ESF)
intdf205.IPD <- ipd(intdf205.ESF)
intdf206.IPD <- ipd(intdf206.ESF)
intdf207.IPD <- ipd(intdf207.ESF)
intdf208.IPD <- ipd(intdf208.ESF)
intdf209.IPD <- ipd(intdf209.ESF)
intdf210.IPD <- ipd(intdf210.ESF)
intdf211.IPD <- ipd(intdf211.ESF)
intdf212.IPD <- ipd(intdf212.ESF)
intdf213.IPD <- ipd(intdf213.ESF)
intdf214.IPD <- ipd(intdf214.ESF)
intdf215.IPD <- ipd(intdf215.ESF)
intdf216.IPD <- ipd(intdf216.ESF)
intdf217.IPD <- ipd(intdf217.ESF)
intdf218.IPD <- ipd(intdf218.ESF)
intdf219.IPD <- ipd(intdf219.ESF)
intdf220.IPD <- ipd(intdf220.ESF)
intdf221.IPD <- ipd(intdf221.ESF)
intdf222.IPD <- ipd(intdf222.ESF)
intdf223.IPD <- ipd(intdf223.ESF)
intdf224.IPD <- ipd(intdf224.ESF)
intdf225.IPD <- ipd(intdf225.ESF)
intdf226.IPD <- ipd(intdf226.ESF)
intdf227.IPD <- ipd(intdf227.ESF)
intdf228.IPD <- ipd(intdf228.ESF)

##graphing loop

all.data <- c("intdf201.IPD", "intdf202.IPD", "intdf203.IPD", "intdf204.IPD",
              "intdf205.IPD", "intdf206.IPD", "intdf207.IPD", "intdf208.IPD",
              "intdf209.IPD", "intdf210.IPD", "intdf211.IPD", "intdf212.IPD",
              "intdf213.IPD", "intdf214.IPD", "intdf215.IPD", "intdf216.IPD",
              "intdf217.IPD", "intdf218.IPD", "intdf219.IPD", "intdf220.IPD",
              "intdf221.IPD", "intdf222.IPD", "intdf223.IPD", "intdf224.IPD",
              "intdf225.IPD", "intdf226.IPD", "intdf227.IPD", "intdf228.IPD"
              )

i <- all.data[i]

for(i in 1:length(all.data)){
  ipd_i<-all.data[i]
  pdf(paste(ipd_i,".pdf", collapse = ""), width = 5, height = 5)
  plot(get(ipd_i), log = 'xy', axes = FALSE, ylim=c(0.0001,1), 
       xlim=c(0.9,500))
  logAxis(1)
  logAxis(2)
  box()
  dev.off()  
}

i <- all.data[i]




##PLOT RAD
for(i in 1:length(all.data)){
  ipd_i<-all.data[i]
  pdf(paste("RAD", ipd_i,".pdf", collapse = ''), width = 5, height = 5)
  plot(get(ipd_i), ptype = 'rad', log = 'xy', 
       xaxt = 'n', yaxt = 'n', xlab = '', ylab = '',
       ylim = c(1, 20000),xlim= c(1,60))
  logAxis(1, expLab = TRUE)
  logAxis(2, expLab = TRUE)
  box()
  dev.off()  
}


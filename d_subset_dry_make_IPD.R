
setwd("~/Desktop/R_scripts/Restinga/R_outputs")

##dry data

DRY.5.L1.2015 <-res2015[res2015$PLOT == "5_L1",]
df301 <- DRY.5.L1.2015
DRY.5.L1.2016 <-res2016[res2016$PLOT == "5_L1",]
df302 <- DRY.5.L1.2016

DRY.6.L1.2015 <-res2015[res2015$PLOT == "6_L1",]
df303 <- DRY.6.L1.2015
DRY.6.L1.2016 <-res2016[res2016$PLOT == "6_L1",]
df304 <- DRY.6.L1.2016

DRY.5.L2.2015 <-res2015[res2015$PLOT == "5_L2",]
df305 <- DRY.5.L2.2015
DRY.5.L2.2016 <-res2016[res2016$PLOT == "5_L2",]
df306 <- DRY.5.L2.2016

DRY.6.L2.2015 <-res2015[res2015$PLOT == "6_L2",]
df307 <- DRY.6.L2.2015
DRY.6.L2.2016 <-res2016[res2016$PLOT == "6_L2",]
df308 <- DRY.6.L2.2016

DRY.5.L3.2015 <-res2015[res2015$PLOT == "5_L3",]
df309 <- DRY.5.L3.2015
DRY.5.L3.2016 <-res2016[res2016$PLOT == "5_L3",]
df310 <- DRY.5.L3.2016

DRY.6.L3.2015 <-res2015[res2015$PLOT == "6_L3",]
df311 <- DRY.6.L3.2015
DRY.6.L3.2016 <-res2016[res2016$PLOT == "6_L3",]
df312 <- DRY.6.L3.2016

DRY.5.L4.2015 <-res2015[res2015$PLOT == "5_L4",]
df313 <- DRY.5.L4.2015
DRY.5.L4.2016 <-res2016[res2016$PLOT == "5_L4",]
df314 <- DRY.5.L4.2016

DRY.6.L4.2015 <-res2015[res2015$PLOT == "6_L4",]
df315 <- DRY.6.L4.2015
DRY.6.L4.2016 <-res2016[res2016$PLOT == "6_L4",]
df316 <- DRY.6.L4.2016

DRY.5.L5.2015 <-res2015[res2015$PLOT == "5_L5",]
df317 <- DRY.5.L5.2015
DRY.5.L5.2016 <-res2016[res2016$PLOT == "5_L5",]
df318 <- DRY.5.L5.2016

DRY.6.L5.2015 <-res2015[res2015$PLOT == "6_L5",]
df319 <- DRY.6.L5.2015
DRY.6.L5.2016 <-res2016[res2016$PLOT == "6_L5",]
df320 <- DRY.6.L5.2016

DRY.5.L6.2015 <-res2015[res2015$PLOT == "5_L6",]
df321 <- DRY.5.L6.2015
DRY.5.L6.2016 <-res2016[res2016$PLOT == "5_L6",]
df322 <- DRY.5.L6.2016

DRY.6.L6.2015 <-res2015[res2015$PLOT == "6_L6",]
df323 <- DRY.6.L6.2015
DRY.6.L6.2016 <-res2016[res2016$PLOT == "6_L6",]
df324 <- DRY.6.L6.2016

DRY.5.L7.2015 <-res2015[res2015$PLOT == "5_L7",]
df325 <- DRY.5.L7.2015
DRY.5.L7.2016 <-res2016[res2016$PLOT == "5_L7",]
df326 <- DRY.5.L7.2016

DRY.6.L7.2015 <-res2015[res2015$PLOT == "6_L7",]
df327 <- DRY.6.L7.2015
DRY.6.L7.2016 <-res2016[res2016$PLOT == "6_L7",]
df328 <- DRY.6.L7.2016

## make METE objects
drydf301.ESF <- meteESF(spp = df301$SP, abund = df301$COUNT, power = df301$DBH^2)
drydf302.ESF <- meteESF(spp = df302$SP, abund = df302$COUNT, power = df302$DBH^2)
drydf303.ESF <- meteESF(spp = df303$SP, abund = df303$COUNT, power = df303$DBH^2)
drydf304.ESF <- meteESF(spp = df304$SP, abund = df304$COUNT, power = df304$DBH^2)
drydf305.ESF <- meteESF(spp = df305$SP, abund = df305$COUNT, power = df305$DBH^2)
drydf306.ESF <- meteESF(spp = df306$SP, abund = df306$COUNT, power = df306$DBH^2)
drydf307.ESF <- meteESF(spp = df307$SP, abund = df307$COUNT, power = df307$DBH^2)
drydf308.ESF <- meteESF(spp = df308$SP, abund = df308$COUNT, power = df308$DBH^2)
drydf309.ESF <- meteESF(spp = df309$SP, abund = df309$COUNT, power = df309$DBH^2)
drydf310.ESF <- meteESF(spp = df310$SP, abund = df310$COUNT, power = df310$DBH^2)
drydf311.ESF <- meteESF(spp = df311$SP, abund = df311$COUNT, power = df311$DBH^2)
drydf312.ESF <- meteESF(spp = df312$SP, abund = df312$COUNT, power = df312$DBH^2)
drydf313.ESF <- meteESF(spp = df313$SP, abund = df313$COUNT, power = df313$DBH^2)
drydf314.ESF <- meteESF(spp = df314$SP, abund = df314$COUNT, power = df314$DBH^2)
drydf315.ESF <- meteESF(spp = df315$SP, abund = df315$COUNT, power = df315$DBH^2)
drydf316.ESF <- meteESF(spp = df316$SP, abund = df316$COUNT, power = df316$DBH^2)
drydf317.ESF <- meteESF(spp = df317$SP, abund = df317$COUNT, power = df317$DBH^2)
drydf318.ESF <- meteESF(spp = df318$SP, abund = df318$COUNT, power = df318$DBH^2)
drydf319.ESF <- meteESF(spp = df319$SP, abund = df319$COUNT, power = df319$DBH^2)
drydf320.ESF <- meteESF(spp = df320$SP, abund = df320$COUNT, power = df320$DBH^2)
drydf321.ESF <- meteESF(spp = df321$SP, abund = df321$COUNT, power = df321$DBH^2)
drydf322.ESF <- meteESF(spp = df322$SP, abund = df322$COUNT, power = df322$DBH^2)
drydf323.ESF <- meteESF(spp = df323$SP, abund = df323$COUNT, power = df323$DBH^2)
drydf324.ESF <- meteESF(spp = df324$SP, abund = df324$COUNT, power = df324$DBH^2)
drydf325.ESF <- meteESF(spp = df325$SP, abund = df325$COUNT, power = df325$DBH^2)
drydf326.ESF <- meteESF(spp = df326$SP, abund = df326$COUNT, power = df326$DBH^2)
drydf327.ESF <- meteESF(spp = df327$SP, abund = df327$COUNT, power = df327$DBH^2)
drydf328.ESF <- meteESF(spp = df328$SP, abund = df328$COUNT, power = df328$DBH^2)



#make IPDs

drydf301.IPD <- ipd(drydf301.ESF)
drydf302.IPD <- ipd(drydf302.ESF)
drydf303.IPD <- ipd(drydf303.ESF)
drydf304.IPD <- ipd(drydf304.ESF)
drydf305.IPD <- ipd(drydf305.ESF)
drydf306.IPD <- ipd(drydf306.ESF)
drydf307.IPD <- ipd(drydf307.ESF)
drydf308.IPD <- ipd(drydf308.ESF)
drydf309.IPD <- ipd(drydf309.ESF)
drydf310.IPD <- ipd(drydf310.ESF)
drydf311.IPD <- ipd(drydf311.ESF)
drydf312.IPD <- ipd(drydf312.ESF)
drydf313.IPD <- ipd(drydf313.ESF)
drydf314.IPD <- ipd(drydf314.ESF)
drydf315.IPD <- ipd(drydf315.ESF)
drydf316.IPD <- ipd(drydf316.ESF)
drydf317.IPD <- ipd(drydf317.ESF)
drydf318.IPD <- ipd(drydf318.ESF)
drydf319.IPD <- ipd(drydf319.ESF)
drydf320.IPD <- ipd(drydf320.ESF)
drydf321.IPD <- ipd(drydf321.ESF)
drydf322.IPD <- ipd(drydf322.ESF)
drydf323.IPD <- ipd(drydf323.ESF)
drydf324.IPD <- ipd(drydf324.ESF)
drydf325.IPD <- ipd(drydf325.ESF)
drydf326.IPD <- ipd(drydf326.ESF)
drydf327.IPD <- ipd(drydf327.ESF)
drydf328.IPD <- ipd(drydf328.ESF)


##graphing loop

all.data <- c("drydf301.IPD", "drydf302.IPD", "drydf303.IPD", "drydf304.IPD",
              "drydf305.IPD", "drydf306.IPD", "drydf307.IPD", "drydf308.IPD",
              "drydf309.IPD", "drydf310.IPD", "drydf311.IPD", "drydf312.IPD",
              "drydf313.IPD", "drydf314.IPD", "drydf315.IPD", "drydf316.IPD",
              "drydf317.IPD", "drydf318.IPD", "drydf319.IPD", "drydf320.IPD",
              "drydf321.IPD", "drydf322.IPD", "drydf323.IPD", "drydf324.IPD",
              "drydf325.IPD", "drydf326.IPD", "drydf327.IPD", "drydf328.IPD"
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

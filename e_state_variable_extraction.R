###
##try to create dataframe with all summary info for restinga plots

require(meteR)
require(nleqslv)
library(nleqslv)
library(meteR)
library(socorro)


all.data <- list(df101.ESF, df102.ESF, df103.ESF, df104.ESF,
              df105.ESF, df106.ESF, df107.ESF, df108.ESF,
              df109.ESF, df110.ESF, df111.ESF, df112.ESF,
              df113.ESF, df114.ESF, df115.ESF, df116.ESF,
              df117.ESF, df118.ESF, df119.ESF, df120.ESF,
              df121.ESF, df122.ESF, df123.ESF, df124.ESF,
              df125.ESF, df126.ESF, df127.ESF, df128.ESF,
              intdf201.ESF, intdf202.ESF, intdf203.ESF, intdf204.ESF,
              intdf205.ESF, intdf206.ESF, intdf207.ESF, intdf208.ESF,
              intdf209.ESF, intdf210.ESF, intdf211.ESF, intdf212.ESF,
              intdf213.ESF, intdf214.ESF, intdf215.ESF, intdf216.ESF,
              intdf217.ESF, intdf218.ESF, intdf219.ESF, intdf220.ESF,
              intdf221.ESF, intdf222.ESF, intdf223.ESF, intdf224.ESF,
              intdf225.ESF, intdf226.ESF, intdf227.ESF, intdf228.ESF,
              drydf301.ESF, drydf302.ESF, drydf303.ESF, drydf304.ESF,
              drydf305.ESF, drydf306.ESF, drydf307.ESF, drydf308.ESF,
              drydf309.ESF, drydf310.ESF, drydf311.ESF, drydf312.ESF,
              drydf313.ESF, drydf314.ESF, drydf315.ESF, drydf316.ESF,
              drydf317.ESF, drydf318.ESF, drydf319.ESF, drydf320.ESF,
              drydf321.ESF, drydf322.ESF, drydf323.ESF, drydf324.ESF,
              drydf325.ESF, drydf326.ESF, drydf327.ESF, drydf328.ESF)

all.data.original <- list(df101, df102, df103, df104,
                 df105, df106, df107, df108,
                 df109, df110, df111, df112,
                 df113, df114, df115, df116,
                 df117, df118, df119, df120,
                 df121, df122, df123, df124,
                 df125, df126, df127, df128,
                 df201, df202, df203, df204,
                 df205, df206, df207, df208,
                 df209, df210, df211, df212,
                 df213, df214, df215, df216,
                 df217, df218, df219, df220,
                 df221, df222, df223, df224,
                 df225, df226, df227, df228,
                 df301, df302, df303, df304,
                 df305, df306, df307, df308,
                 df309, df310, df311, df312,
                 df313, df314, df315, df316,
                 df317, df318, df319, df320,
                 df321, df322, df323, df324,
                 df325, df326, df327, df328)



all.data_i <- all.data[i]

null.df <- NULL

for(i in 1:length(all.data)){
  all.data_i <- all.data[[i]]
  
  la1 <- as.numeric(all.data_i$La[1])
  la2 <- as.numeric(all.data_i$La[2])
  S_tot <- as.numeric(all.data_i$state.var[1])
  N_tot <- as.numeric(all.data_i$state.var[2])
  E_tot <- as.numeric(all.data_i$state.var[3])
  sad_obj <- meteDist2Rank(sad(all.data_i))
  sing_pred <- sum(sad_obj == 1) 
  rare_pred <- sum(sad_obj <= 3) 
  max_pred <- max(sad_obj)
  obs_abund_all <- aggregate(all.data.original[[i]]$COUNT ~ all.data.original[[i]]$SP, data = all.data.original[[i]], sum)  
  obs_abund <- sort(obs_abund_all[,2], decreasing = TRUE)
  sing_obs <- sum(obs_abund == 1)
  rare_obs <- sum(obs_abund >= 3)
  max_obs <- max(obs_abund)
  env<-as.character(unique(all.data.original[[i]]$ENV))
  plot<-as.character(unique(all.data.original[[i]]$PLOT))
  year<-as.character(unique(all.data.original[[i]]$YEAR))
  
  null.df<-rbind(null.df,cbind(env,year,plot,S_tot,N_tot,E_tot,
                               la1,la2,sing_pred, sing_obs,
                               rare_pred,rare_obs, max_pred,
                               max_obs))
  
  
}

write.csv(null.df, file = "state_variables.csv")

setwd("~/Desktop/R_scripts/Restinga/R_inputs")

write.csv(null.df, file = "Restinga_state_variables.csv")

#all.data_i
#class(all.data_i)
#test1$La[1]



## extract these

la1 <- as.numeric(test1$La[1])
la2 <- as.numeric(test1$La[2])
S_tot <- as.numeric(test1$state.var[1])
N_tot <- as.numeric(test1$state.var[2])
E_tot <- as.numeric(test1$state.var[3])
sad_obj <- meteDist2Rank(sad(test1))
sing_obs <- sum(sad_obs == 1) # number of observed singletons
rare_obs <- sum(sad_obs <= 10) # number of observed species with n <= 10




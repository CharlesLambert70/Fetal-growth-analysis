library(broom.mixed)
library(dplyr)

data<-merge(T2DGGI_HAPO_mothers_meta_scaled_merged,HAPO_5groups_merged,by.x="row.names",by.y='MA_IID',all=T)
data<-merge(data,T2DGGI_HAPO_offspring_meta_scaled_merged,by.x="OS_IID",by.y='row.names',all=T)
data<-merge(data,HAPO_offspring_PC_merged,by.x="OS_IID",by.y='row.names',all=T)

n=1
result<-data.frame()

# Conditional associations between maternal and fetal PRS and fetal growth measurements
for (k in c('AFC','AMR','CHN','THAI')){
  #for (k in c('EUR')){
  data1<-subset(data,HAPO.x==k)
for (i in 2:10){
for (j in c('OS_BIRTH_LENGTH','OS_BIRTH_WEIGHT','OS_BIRTH_PI','OS_BIRTH_HEAD','OS_BIRTH_FLANK_SKIN',
             'OS_BIRTH_SUB_SKIN','OS_BIRTH_TRI_SKIN','OS_BIRTH_SKIN_SUM','OS_CORD_CP_ug')){

  model<-lm(get(j)~get(colnames(data)[i])+get(colnames(data)[i + 75])+factor(MA_PARITY)+MA_DELIVERY_AGE+OS_DELIVERY_GA+factor(OS_BIRTH_SEX)+
               PC1+PC2+PC3+PC4+PC5,data1) #for AFC,AMR,CHN and THAI
  #model<-lm(get(j)~get(colnames(data)[i])+get(colnames(data)[i + 75])+factor(MA_PARITY)+MA_DELIVERY_AGE+OS_DELIVERY_GA+factor(OS_BIRTH_SEX)+factor(OS_CENTRE_ID)+
               PC1+PC2+PC3+PC4+PC5,data1) #for EUR
  result1 <- data.frame(tidy(model))
  m=confint(model)
  rownames(result1)<-result1$term
  result[n,'group']<-k
  result[n,'PRS']<-colnames(data)[i]
  #result[n,'MA']<-i
  result[n,'moderator']<-h
  result[n,'trait']<-j
  result[n,'p_MA']<-result1['get(colnames(data)[i])','p.value']
  result[n,'z_MA']<-result1['get(colnames(data)[i])','statistic']
  result[n,'beta_MA']<-result1['get(colnames(data)[i])','estimate']
  result[n,'std_MA']<-result1['get(colnames(data)[i])','std.error']
  result[n,'ci_low_MA']<-m['get(colnames(data)[i])',1]
  result[n,'ci_up_MA']<-m['get(colnames(data)[i])',2]
  result[n,'p_OS']<-result1['get(colnames(data)[i+75])','p.value']
  result[n,'z_OS']<-result1['get(colnames(data)[i+75])','statistic']
  result[n,'beta_OS']<-result1['get(colnames(data)[i+75])','estimate']
  result[n,'std_OS']<-result1['get(colnames(data)[i+75])','std.error']
  result[n,'ci_low_OS']<-m['get(colnames(data)[i+75])',1]
  result[n,'ci_up_OS']<-m['get(colnames(data)[i+75])',2]
  result[n,'n']<-length(model[["residuals"]])
 n<-n+1
  }
  }
  }

# Conditional associations between maternal and fetal PRS and LGA and SGA
for (k in c('AFC','AMR','CHN','THAI')){
  #for (k in c('EUR')){
  data1<-subset(data,HAPO.x==k)
  bw_adjusted<-as.data.frame(residuals(lm(OS_BIRTH_WEIGHT~OS_DELIVERY_GA+factor(OS_BIRTH_SEX)+factor(OS_CENTRE_ID),data)))
  bw_adjusted<-as.data.frame(residuals(lm(OS_BIRTH_WEIGHT~OS_DELIVERY_GA+factor(OS_BIRTH_SEX),data1)))
  colnames(bw_adjusted)<-'bw_adjusted'
  data1<-merge(data1,bw_adjusted,by.x ='row.names',by.y='row.names',all=TRUE)
  data1<-data1[,c(-1)]
  data1<-data1%>% mutate(SGA=if_else(bw_adjusted<quantile(na.omit(data1$bw_adjusted),0.1),1,0))
  data1<-data1%>% mutate(LGA=if_else(bw_adjusted>quantile(na.omit(data1$bw_adjusted),0.9),1,0))
for (i in 2:10){
for (j in c('LGA','SGA')){

  model<-glm(get(j)~get(colnames(data)[i])+get(colnames(data)[i + 75])+factor(MA_PARITY)+MA_DELIVERY_AGE+OS_DELIVERY_GA+factor(OS_BIRTH_SEX)+
               PC1+PC2+PC3+PC4+PC5,family = "binomial",data1) #for AFC,AMR,CHN and THAI
  #model<-glm(get(j)~get(colnames(data)[i])+get(colnames(data)[i + 75])+factor(MA_PARITY)+MA_DELIVERY_AGE+OS_DELIVERY_GA+factor(OS_BIRTH_SEX)+factor(OS_CENTRE_ID)+
               PC1+PC2+PC3+PC4+PC5,family = "binomial",data1) #for EUR
  result1 <- data.frame(tidy(model))
  m=confint(model)
  rownames(result1)<-result1$term
  result[n,'group']<-k
  result[n,'PRS']<-colnames(data)[i]
  #result[n,'MA']<-i
  result[n,'moderator']<-h
  result[n,'trait']<-j
  result[n,'p_MA']<-result1['get(colnames(data)[i])','p.value']
  result[n,'z_MA']<-result1['get(colnames(data)[i])','statistic']
  result[n,'beta_MA']<-result1['get(colnames(data)[i])','estimate']
  result[n,'std_MA']<-result1['get(colnames(data)[i])','std.error']
  result[n,'ci_low_MA']<-m['get(colnames(data)[i])',1]
  result[n,'ci_up_MA']<-m['get(colnames(data)[i])',2]
  result[n,'p_OS']<-result1['get(colnames(data)[i+75])','p.value']
  result[n,'z_OS']<-result1['get(colnames(data)[i+75])','statistic']
  result[n,'beta_OS']<-result1['get(colnames(data)[i+75])','estimate']
  result[n,'std_OS']<-result1['get(colnames(data)[i+75])','std.error']
  result[n,'ci_low_OS']<-m['get(colnames(data)[i+75])',1]
  result[n,'ci_up_OS']<-m['get(colnames(data)[i+75])',2]
  result[n,'n']<-length(model[["residuals"]])
 n<-n+1
  }
  }
  }

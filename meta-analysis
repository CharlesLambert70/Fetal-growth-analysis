library(meta)
library(metafor)

data<-read.table("clipboard", sep="\t", header = TRUE)

result_meta<-data.frame()
n=1
for (i in unique(data$PRS)){
  for (j in unique(data$outcome)){
data1<-subset(data,PRS==i & outcome==j)

m <- metagen(TE=data1$estimate, seTE=data1$std,studlab=data1$cohort,sm="SMD")
#m <- metagen(TE=data1$beta, lower = data1$ci_low, upper = data1$ci_up,studlab=data1$cohort,sm="OR")
result_meta[n,'PRS']=i
result_meta[n,'outcome']=j
result_meta[n,'random_est']=m[["TE.random"]]
result_meta[n,'random_se']=m[["seTE.random"]]
result_meta[n,'random_z']=m[["statistic.random"]]
result_meta[n,'random_pval']=m[["pval.random"]]
result_meta[n,'random_lower']=m[["lower.random"]]
result_meta[n,'random_upper']=m[["upper.random"]]
result_meta[n,'Q']=m[["Q"]]
result_meta[n,'pval.Q']=m[["pval.Q"]]
result_meta[n,'I2']=m[["I2"]]
result_meta[n,'I2_lower']=m[["lower.I2"]]
result_meta[n,'I2_upper']=m[["upper.I2"]]

n<-n+1

}
}

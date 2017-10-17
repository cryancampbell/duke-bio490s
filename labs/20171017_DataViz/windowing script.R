#useful function for splitting a dataframe into many smaller ones, for example, by chromosome
BCs<-split(dataset,dataset[,chromosome])
#function for windowing

library(zoo)
SWsnp = function(x,y,z){
  out<-rollapply(as.numeric(x),width=y,mean,by= z, na.rm=TRUE)
}
#i.e. test<-SWsnp(genome_data$scaffold1$snps)

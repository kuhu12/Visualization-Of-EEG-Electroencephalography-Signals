#PARALLEL COORDINATES

require(MASS)


for(i in 1:100){
  jpeg(file = paste("C://Desktop//plot//parrainbow",i,".jpeg",sep=""),width=800,height=800,units="px",quality=200)
  par(mfcol=c(1,2))
  layout(matrix(1:2, nrow=2))
  for(i in 1:2)
{
  random_number<-sample(1:25,1,replace=FALSE)
  oname=paste("C:/Users/acer/Desktop/workspace/data",random_number,sep="")
  fname=paste("data",random_number,sep="")
  fname<-read.csv(paste(oname,".csv",sep=""))

  parcoord(fname, col=rainbow(length(fname[,1])), var.label=TRUE)
  
}
  dev.off()
}
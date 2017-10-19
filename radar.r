#RADAR CHART

require(fmsb)
mydat<-read.csv("C://Desktop//Visualization using R//minmax.csv")
 #decrease default margin

for(i in 1:100){
  jpeg(file = paste("C://Desktop//plot results//finalplot1",i,".jpeg",sep=""),width=800,height=800,units="px",quality=200)
  par(mar=c(1, 2, 2, 1))
  layout(matrix(1:4, ncol=2))
  for(i in 1:4)
{
  random_number<-sample(1:25,1,replace=FALSE)
  oname=paste("Workspace/data",random_number,sep="")
  fname=paste("data",random_number,sep="")
  fname<-read.csv(paste(oname,".csv",sep=""))
  fname<-rbind(mydat,fname)
  radarchart(fname,title=paste("data",random_number,sep=""))
}
  dev.off()
}



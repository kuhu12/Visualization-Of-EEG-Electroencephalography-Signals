#CORROGRAM

require(corrgram) 
  jpeg(file = paste("C://Desktop//plot//corr",25,".jpeg",sep=""),width=1000,height=1000,units="px",quality=400)
  d<-read.csv("C://Users//acer//Desktop//workspace//data25.csv")
n<-paste("data",25,sep="")
corrgram(d, order=TRUE, lower.panel=panel.shade,upper.panel=panel.shade, text.panel=panel.txt,main=n)
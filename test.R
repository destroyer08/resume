Sys.setenv(JAVA_HOME="C:\\Program Files\\Java\\jre7\\")
library(venneuler)
vd <- venneuler(c(JS=1.0,HTML=0.8,Shiny=0.9,Matlab=1.2,Pig=1.2,R=1.5,Hadoop=1.3,Java=1.2,Python=1.3,C=1.2,"C&Java"=0.3,"R&Hadoop"=0.2,"Java&Hadoop"=0.2,"Java&R"=0.3,"Java&R&Hadoop"=0.3,"R&Python"=0.4,"Pig&Java&Hadoop"=0.2,"Pig&Java"=0.3,"Pig&Hadoop"=0.2,"Matlab&Java"=0.2,"Matlab&R"=0.3,"Matlab&Python"=0.2,"Matlab&Java&R&Python"=0.2,"C&Matlab"=0.2,"C&Matlab&Java"=0.3,"JS&HTML"=0.2,"JS&Shiny"=0.2,"HTML&Shiny"=0.2,"JS&HTML&Shiny"=0.3,"C&Python"=0.2))
plot(vd)

library(ggplot2)
set <- c("Java","Python","R","C","Pig","Matlab","HTML","Java Script")
per <- c(80,85,95,65,45,55,70,40)
a<- data.frame(set,per)
ggplot(a,aes(x=set,y=per,fill=set,main="Skills"))+geom_bar(stat="identity", position="identity",width=0.4)+guides(fill=FALSE)+xlab("")+ylab("")+scale_y_continuous(breaks=c(40,65,95),labels=c("Low","Medium","High"))


library(plotrix)
b<-c(22,40,38)
names(b)<- c(1,2,3)
lab <- c("Data Mining","Analytics","Machine Learning")
p<-pie3D(b,labelrad=1.5,labels=lab,explode=0.1,main="Area of Interest")
print(p)

require(googleVis) ## googleVis 0.5.0-3
dat <- data.frame(Room=c("Work","M-Tech(C.S)","BE(C.S)"),
                  Language=c("Paxcel Tecchnologies Pvt Ltd", "Birla Institute of Technology, Mesra", "Ashoka Institute of Technology & Management"),
                  start=as.POSIXct(c(
                                     "2014-07-18", 
                                     "2012-07-16",
                                     "2008-08-14")),
                  end=as.POSIXct(c(
                                   "2015-05-30", 
                                   "2014-05-18",
                                   "2012-04-16")))
plot(
  gvisTimeline(data=dat, 
               rowlabel="Room", barlabel="Language", 
               start="start", end="end",options=list(width=800, height=300))
)

b<-c(35,25,25,15)
names(b)<- c(1,2,3,4)
lab <- c("Web Surfing","Gaming","Sports", "Reading")
p<-pie3D(b,labelrad=1.2,labels=lab,explode=0.1,main="My Hobbies")
print(p)

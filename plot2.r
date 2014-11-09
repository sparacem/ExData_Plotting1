data<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = c("character", "character", "real", "real", "real", "real", "real", "real", "real"), na.strings = "?")

starti<-which(data[,1] == "1/1/2007")
endi<-which(data[,1] == "2/1/2007")

in1<-starti[1]
in2<-endi[length(endi)]

data4plot<-data[in1:in2,] 

plot.ts(data4plot[,3], xlab = "", ylab = "Global Active Power (kilowatts)", axes=FALSE)

s1<-which(data4plot[,1] == "1/1/2007")
s2<-which(data4plot[,1] == "2/1/2007")
s3<-s2[length(s2)]
S<-c(s1[1],s2[1],s3)

axis(1,at=S, labels=c("Thu","Fri","Sat"))
axis(2,at=c(0,1,2,3))

box()
dev.copy(png, file = "plot2.png")
dev.off()
data<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = c("character", "character", "real", "real", "real", "real", "real", "real", "real"), na.strings = "?")

starti<-which(data[,1] == "1/1/2007")
endi<-which(data[,1] == "2/1/2007")

in1<-starti[1]
in2<-endi[length(endi)]

data4plot<-data[in1:in2,] 


plot.ts(data4plot[,9], xlab = "", ylab = "Energy sub metering", col="blue",axes=FALSE)

lines(data4plot[,8],col="red",lwd=2.5)
lines(data4plot[,7],col="black",lwd=2.5)

s1<-which(data4plot[,1] == "1/1/2007")
s2<-which(data4plot[,1] == "2/1/2007")
s3<-s2[length(s2)]
S<-c(s1[1],s2[1],s3)

axis(1,at=S, labels=c("Thu","Fri","Sat"))
axis(2,at=c(0:19))
box()

legend("topleft", pch = "-", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png")
dev.off()
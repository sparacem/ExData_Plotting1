data<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = c("character", "character", "real", "real", "real", "real", "real", "real", "real"), na.strings = "?")

starti<-which(data[,1] == "1/1/2007")
endi<-which(data[,1] == "2/1/2007")

in1<-starti[1]
in2<-endi[length(endi)]

data4plot<-data[in1:in2,] 

hist(data4plot[,3], col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()
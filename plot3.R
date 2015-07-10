###############################################################################
# Exploratory Data Analysis Course Project 1 - 4
# 
# Author: Christian J. Lagares Nieves
#
# Function: Cache and Plot 
#
###############################################################################


source("load_data.R")

plot3 <- paste(getwd(), "/Figures/plot3.png", sep = "")
if(!file.exists(plot3)){
	png("Figures/plot3.png", width = 480, height = 480)
	plot(LoadData$Time, LoadData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(LoadData$Time, LoadData$Sub_metering_2, type="l", col="red")
	lines(LoadData$Time, LoadData$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
	dev.off()
} else {
	plot(LoadData$Time, LoadData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(LoadData$Time, LoadData$Sub_metering_2, type="l", col="red")
	lines(LoadData$Time, LoadData$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}



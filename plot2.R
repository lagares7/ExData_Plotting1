###############################################################################
# Exploratory Data Analysis Course Project 1 - 3
# 
# Author: Christian J. Lagares Nieves
#
# Function: Cache and Plot 
#
###############################################################################


source("load_data.R")

plot2 <- paste(getwd(), "/Figures/plot2.png", sep = "")
if(!file.exists(plot2)){
	png("Figures/plot2.png", width = 480, height = 480)
	plot(LoadData$Time, LoadData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
	dev.off()
} else {
	plot(LoadData$Time, LoadData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}


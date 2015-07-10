###############################################################################
# Exploratory Data Analysis Course Project 1 - 2
# 
# Author: Christian J. Lagares Nieves
#
# Function: Cache and Plot 
#
###############################################################################


source("load_data.R")

plot1 <- paste(getwd(), "/Figures/plot1.png", sep = "")
if(!file.exists(plot1)){
	png("Figures/plot1.png", width = 480, height = 480)
	hist(LoadData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
	dev.off()
} else {
	hist(LoadData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}



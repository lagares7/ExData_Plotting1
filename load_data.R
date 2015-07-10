###############################################################################
# Exploratory Data Analysis Course Project 1 - 1
# 
# Author: Christian J. Lagares Nieves
#
# Function: Load and Cache
#
###############################################################################


#Special functions employed called from the "httr" package
library(httr) 

# URL to the Data
Direction <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
Data <- "Data"

# Verifying existance of file to cache if possible.
if(!file.exists(Data)){
	dir.create(Data)
} 
figures<- "Figures" 
if(!file.exists(figures)){
	dir.create(figures)
}
Archive <- paste(getwd(), "/Data/household_power_consumption.zip", sep = "")
if(!file.exists(Archive)){
	download.file(Direction, Archive, method="curl", mode="wb")
}
Archive <- paste(getwd(), "/Data/household_power_consumption.txt", sep = "")
if(!file.exists(Archive)){
	unzip(Archive, list = FALSE, overwrite = FALSE, exdir = Data)
}

ResumedData <- paste(getwd(), "/Data/ResumedData.rds", sep = "")
if(!file.exists(ResumedData)){
	Data <- "Data/household_power_consumption.txt"
	LoadData <- read.table(Data, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
	LoadData$Time <- strptime(paste(LoadData$Date, LoadData$Time), "%d/%m/%Y %H:%M:%S")
	LoadData$Date <- as.Date(LoadData$Date, "%d/%m/%Y")
	Dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
	LoadData <- subset(LoadData, Date %in% Dates)
	Resumed_Data <- paste(getwd(), "/", "Data", "/", "Resumed_Data", ".rds", sep="")
	saveRDS(LoadData, Resumed_Data)
} else {
	Data <- "Data/Resumed_Data.rds"
	LoadData <- readRDS(Data)
}


# Data Science Specialization
# Exploratory Data Analysis: Course Project #1
## Program: plot1.R
## Student: Félix D. Mejía

## Abstract
## This assignment uses data from "Individual household electric power consumption Data Set",
## which includes measurements of electric power consumption in one household with a one-minute
## sampling rate over a period of almost 4 years. Different electrical quantities and some
## sub-metering values are available.

## This program will generate file "plot1.png", a frequency histogram of Global Active Power measured in KiloWatts.

# Setting the working directory on my Data Directory
setwd("~/OneDrive/usr/docs/Data Science Specialization/04. Exploratory Data Analysis/prj/01/data")

library(sqldf)
hhpower <- read.csv.sql("household_power_consumption.txt", sql = "select * from file where Date in ('1/2/2007', '2/2/2007')", sep = ";")

png(file="~/GitHub/ExData_Plotting1/plot1.png",width=480,height=480)
hist(hhpower$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()




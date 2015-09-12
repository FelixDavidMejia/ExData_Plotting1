# Data Science Specialization
# Exploratory Data Analysis: Course Project #1
## Program: plot3.R
## Student: Félix D. Mejía

## Abstract
## This assignment uses data from "Individual household electric power consumption Data Set",
## which includes measurements of electric power consumption in one household with a one-minute
## sampling rate over a period of almost 4 years. Different electrical quantities and some
## sub-metering values are available.

## This program will generate file "plot3.png", a line graph of Energy sub meterings thru time.

# Setting the working directory on my Data Directory
setwd("~/OneDrive/usr/docs/Data Science Specialization/04. Exploratory Data Analysis/prj/01/data")

library(sqldf)
hhpower <- read.csv.sql("household_power_consumption.txt", sql = "select * from file where Date in ('1/2/2007', '2/2/2007')", sep = ";")
hhpower$datetime <- strptime(paste(hhpower$Date, hhpower$Time), "%e/%m/%Y %H:%M:%S")

png(file="~/GitHub/ExData_Plotting1/plot3.png",width=480,height=480)
plot(hhpower$datetime, hhpower$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", col="black")
lines(hhpower$datetime, hhpower$Sub_metering_2, type = "l", ylab = "Energy sub metering", xlab = "", col="red")
lines(hhpower$datetime, hhpower$Sub_metering_3, type = "l", ylab = "Energy sub metering", xlab = "", col="blue")
legend("topright", names(hhpower)[7:9], col = c("black", "red", "blue"), lwd = 1)
dev.off()




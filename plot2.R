#change date format
dataEPCsub$Date[dataEPCsub$Date == '1/2/2007'] <- '2007-02-01'
dataEPCsub$Date[dataEPCsub$Date == '2/2/2007'] <- '2007-02-02'
dataEPCsub$Date <-as.Date(dataEPCsub$Date,"%Y-%m-%d")
dataEPCsub$myTime <- paste(dataEPCsub$Date, dataEPCsub$Time)
dataEPCsub$myTime <-strptime(dataEPCsub$myTime, "%Y-%m-%d %H:%M:%S")

#plot 2 and creat the PNG file
plot(dataEPCsub$myTime, dataEPCsub$Global_active_power, type = 'l',xlab = "", ylab ="Global Active Power (kilowatts)")
dev.copy(png, file = "~/Desktop/coursera-exploratory data analysis/assignment1/plot2.png", width = 480, height = 480)
dev.off()
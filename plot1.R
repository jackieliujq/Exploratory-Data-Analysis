#read data
dataEPC <- read.table("~/Desktop/coursera-exploratory data analysis/assignment1/household_power_consumption.txt", colClasses = "character", sep = ';', header = T, stringsAsFactors = F)

#extract data from dates 2007-02-01 and 2007-02-02
dataEPCsub <- dataEPC[c(grep("1/2/2007", dataEPC$Date),
                       grep("2/2/2007", dataEPC$Date)),]

#format the numeric variables
specify_decimal <- function(x) format(round(x, 3), nsmall = 3)
for (i in c(3:9)) {
    dataEPCsub[,i] <- specify_decimal(as.numeric(dataEPCsub[,i]))
}

#plot 1 and creat a PNG file
hist(dataEPCsub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png, file = "~/Desktop/coursera-exploratory data analysis/assignment1/plot1.png", width = 480, height = 480)
dev.off()




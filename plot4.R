par(mfrow = c(2,2))
with(dataEPCsub, {
    plot(myTime, Global_active_power, type = 'l', xlab ='', ylab ='Global Active Power (kilowatts)', ylim = c(0,6))
    plot(myTime, Voltage, type = 'l', xlab ='datetime', ylab='Voltage')
    plot(myTime, Sub_metering_1, type = 'l', col = 'black', xlab = "", ylab ="Energy sub metering", ylim = c(0,40))
})
par(new=T)
with(dataEPCsub,plot(myTime, Sub_metering_2, type = 'l', col = 'red', xlab = "", ylab ="Energy sub metering", ylim = c(0,40)))
par(new=T)
with(dataEPCsub,plot(myTime, Sub_metering_3, type = 'l', col = 'blue', xlab = "", ylab ="Energy sub metering", ylim = c(0,40)))

legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =c(1,1,1))

with(dataEPCsub, {
    plot(myTime, Global_reactive_power, type ='l', xlab ='datetime', ylab='Global_reactive_power', ylim = c(0.0,0.5))
})
dev.copy(png, file = "~/Desktop/coursera-exploratory data analysis/assignment1/plot4.png", width = 480, height = 480)
dev.off()


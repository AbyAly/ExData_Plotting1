


png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))
plot(datetime, globalactivepower, type="l", xlab="", ylab="Global Active Power")
voltage <- as.numeric(subdata$Voltage)
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")


subM1 <- as.numeric(subdata$Sub_metering_1)
subM2 <- as.numeric(subdata$Sub_metering_2)
subM3 <- as.numeric(subdata$Sub_metering_3)

plot(datetime, subM1, type="l", ylab="Energy Sub metering", xlab="")
lines(datetime, subM2, type="l", col="red")
lines(datetime, subM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

global_reactive_power <- as.numeric(subdata$Global_reactive_power)
plot(datetime, global_reactive_power, type="l", xlab="", ylab="Global_reactive_power")

dev.off()





subM1 <- as.numeric(subdata$Sub_metering_1)
subM2 <- as.numeric(subdata$Sub_metering_2)
subM3 <- as.numeric(subdata$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subM1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subM2, type="l", col="red")
lines(datetime, subM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
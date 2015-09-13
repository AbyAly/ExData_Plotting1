## Plot 1
## Save the data file in folder 'ExData' and then read the data
project1data <- read.table("./ExData/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
## Subsetting the data for the required dates
subdata <- project1data[project1data$Date %in% c("1/2/2007","2/2/2007") ,]
## Changing global active variable from chr to numeric to run histogram
globalactivepower <- as.numeric(subdata$Global_active_power)
## Checking class
class(globalactivepower)
## Creating plotting device
png("plot1.png", width=480, height=480)
hist(globalactivepower, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()

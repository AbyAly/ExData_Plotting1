## Plot 2
## Save the data file in folder 'ExData' and then read the data. No need to run this command if file is already opened.
project1data <- read.table("./ExData/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
## Subsetting the data for the required dates. No need to run this command if subdata is already there. Check using ls().
subdata <- project1data[project1data$Date %in% c("1/2/2007","2/2/2007") ,]
## Changing global active variable from chr to numeric. No need for this step if already done. Check class(globalactivepwer)
globalactivepower <- as.numeric(subdata$Global_active_power)
## Merging date and time and formatting to POSIXlt and POSIXt format
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
## Creating plot2.png output device file
png("plot2.png", width=480, height=480)
plot(datetime, globalactivepower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
## repeated commands on the top of every file in project
# reading data file
sourcefile <- "household_power_consumption.txt"
data <- read.table(sourcefile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# subsetting data for mentioned date
dateddata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## plotting
# histogram for plot2

datetime <- strptime(paste(dateddata$Date, dateddata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
activepower <- as.numeric(dateddata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, activepower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

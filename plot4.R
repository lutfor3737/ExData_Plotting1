# loading initial data
source("loadData.R")
plot4Data <- loadData()

# defining filename and window size
png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "white")
par(mfrow=c(2,2))

# Drawing Top left

plot(plot4Data$date.time,plot4Data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

# Drawing Top right
plot(plot4Data$date.time, plot4Data$Voltage,xlab='datetime', ylab='Voltage', type='l')

# Drawing Bottom left
plot(plot4Data$date.time, plot4Data$Sub_metering_1, type='l',xlab='', ylab='Energy sub metering')
lines(plot4Data$date.time, plot4Data$Sub_metering_2, col='red')
lines(plot4Data$date.time, plot4Data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),col=c('black', 'red', 'blue'), lty='solid')

# Drawing Bottom right
plot(plot4Data$date.time, plot4Data$Global_reactive_power,xlab='datetime', ylab='Global_reactive_power', type='l')

# shuts down the devicedevice
dev.off()

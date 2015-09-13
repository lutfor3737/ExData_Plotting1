# loading initial data
source("loadData.R")
plot3Data <- loadData()
# defining filename and window size
png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "white")

# plotting graph
plot(plot3Data$date.time, plot3Data$Sub_metering_1, type='l',xlab='', ylab='Energy sub metering')
lines(plot3Data$date.time, plot3Data$Sub_metering_2, col='red')
lines(plot3Data$date.time, plot3Data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),col=c('black', 'red', 'blue'), lty='solid')
# shuts down the device
dev.off()


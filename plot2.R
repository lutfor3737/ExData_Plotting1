# loading initial data
source("loadData.R")
plot2Data <- loadData()
# defining filename and window size
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "white")
# plotting graph
plot(plot2Data$date.time,plot2Data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
# shuts down the device
dev.off()




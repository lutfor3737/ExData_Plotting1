# loading initial data
source("loadData.R")
plot1Data <- loadData()

# defining filename and window size
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "white")
# ploting graph
hist(plot1Data$Global_active_power,main="Global Active Power",xlab="Global Active Power (Killowats)",col="red",ylim=c(0,1200))
# shuts down the device
dev.off()

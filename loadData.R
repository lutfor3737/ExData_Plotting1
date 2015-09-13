 #install.packages("lubridate",dependencies = TRUE)
loadData <- function()
  {
    library(lubridate) # loading library
    # loading text data into powerData variable
    powerData <- read.table('household_power_consumption.txt', header=TRUE,sep=';', na.strings='?',colClasses=c(rep('character', 2), rep('numeric', 7)))
    powerData$Date <- dmy(powerData$Date)
    powerData$Time <- hms(powerData$Time)
    startDate <- ymd('2007-02-01')
    endDate <- ymd('2007-02-02')
    # getting data from the dates 2007-02-01 and 2007-02-02
    powerData <- subset(powerData, year(Date) == 2007 & month(Date) == 2 & (day(Date) == 1 | day(Date) == 2))
    powerData$date.time <- powerData$Date + powerData$Time
    # return data
    return(powerData)
}
  

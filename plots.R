

# The url for our data set. Notice that it is in zip format and is a csv with ";" as a separator
#
#
# Data set header:
# Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3
# 16/12/2006;17:24:00;4.216;0.418;234.840;18.400;0.000;1.000;17.000


ZIPURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipfile <-  "./energy.zip"
 
download.file(url=ZIPURL, destfile = zipfile, mode="wb")

fnames<- grep('\\.txt$', unzip(zipfile, list=TRUE)$Name, 
                         ignore.case=TRUE, value=TRUE)

unzipfile <- fnames[1]


energyall <- read.csv2(unz(zipfile, unzipfile), header = TRUE, sep = ";",  dec = ".", fill = TRUE, na.strings = "?")

# Lets check the data                       
names(energyall)
head(energyall)

nrow(energyall)
ncol(energyall)

# Convert data to yyyy-mm-dd format   
 
energyall$dmy <- as.Date(energyall$Date,"%d/%m/%Y") 

library(lubridate)
energyall$weekday <- weekdays(energyall$dmy)
energyall$wday <- wday(energyall$dmy, label=TRUE)

# Subset of the two days of interest
feb1_2energy <- subset(energyall, (dmy == "2007-02-01" | dmy == "2007-02-02"))


# Plot1
# Not, always a good idea to call dev.off() to flush out prior settings.

dev.off()
png(file="plot1.png",width=480,height=480)
hist(feb1_2energy$Global_active_power, col="red", xlab="Global Active Power (killowatts)", main="Global Active Power")
dev.off()


# Plot2
dev.off()
png(file="plot2.png",width=480,height=480)
plot(feb1_2energy$datetime, feb1_2energy$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="datetime")
dev.off()










load("feb1_2energy.Rda");

#Plot 4

png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
# plot 4.1
plot(feb1_2energy$datetime, feb1_2energy$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
# plot 4.2
plot(feb1_2energy$datetime, feb1_2energy$Voltage, type="l", ylab="Voltage", xlab="datetime")

#plot 4.3

plot(feb1_2energy$datetime, feb1_2energy$Sub_metering_1,   type="n", ylab="Energy sub metering", xlab="")
lines(feb1_2energy$datetime, feb1_2energy$Sub_metering_1, col="black", type="l", ylab="Energy sub metering", xlab="")
lines(feb1_2energy$datetime, feb1_2energy$Sub_metering_2, col="red", type="l", ylab="Energy sub metering", xlab="")
lines(feb1_2energy$datetime, feb1_2energy$Sub_metering_3, col="blue", type="l", ylab="Energy sub metering", xlab="")
legend("topright", col=c("black", "red", "blue"), lty=c("solid", "solid", "solid"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# plot 4.4
plot(feb1_2energy$datetime, feb1_2energy$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

# close png file
dev.off()



 




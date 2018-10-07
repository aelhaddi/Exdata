

load("feb1_2energy.Rda");

# Plot3
png(file="plot3.png",width=480,height=480)
plot(feb1_2energy$datetime, feb1_2energy$Sub_metering_1,   type="n", ylab="Energy sub metering", xlab="")
lines(feb1_2energy$datetime, feb1_2energy$Sub_metering_1, col="black", type="l", ylab="Energy sub metering", xlab="")
lines(feb1_2energy$datetime, feb1_2energy$Sub_metering_2, col="red", type="l", ylab="Energy sub metering", xlab="")
lines(feb1_2energy$datetime, feb1_2energy$Sub_metering_3, col="blue", type="l", ylab="Energy sub metering", xlab="")
legend("topright", col=c("black", "red", "blue"), lty=c("solid", "solid", "solid"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()



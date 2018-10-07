

load("feb1_2energy.Rda")

# Plot2

png(file="plot2.png",width=480,height=480)
plot(feb1_2energy$datetime, feb1_2energy$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()




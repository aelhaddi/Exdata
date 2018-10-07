
load("feb1_2energy.Rda");


# Plot1
# Not, always a good idea to call dev.off() to flush out prior settings.

png(file="plot1.png",width=480,height=480)
hist(feb1_2energy$Global_active_power, col="red", xlab="Global Active Power (killowatts)", main="Global Active Power")
dev.off()



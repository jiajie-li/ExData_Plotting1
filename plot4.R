source("load_data.R")

plot4 <- function(data = NULL, width = 480, height = 480) {
  if (is.null(data)) {
    data <- load_dataset();
  }  
  
  # check the saving Plots: http://www.stat.berkeley.edu/~s133/saving.html
  png("plot4.png", width = width, height = height)
  
  # Setup graphical parameters
  par(mfrow = c(2,2))
  
  # Plot 1 at point (0, 0)
  plot(data$Time, data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power")
  
  # Plot 2 at point (0, 1)
  plot(data$Time, data$Voltage, 
       type="l",
       xlab="datetime",
       ylab="Voltage")
  
  # Plot 3 at point (1, 0)
  plot(data$Time, data$Sub_metering_1, 
       type="l",
       xlab="", 
       ylab="Energy sub metering",
       col="black")
  
  # Plot 3 with colorful lines
  lines(data$Time, data$Sub_metering_2, col="red")
  lines(data$Time, data$Sub_metering_3, col="blue")
  
  # Plot 3 no border line
  legend("topright",
         col = c("black", "red", "blue"),
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1,
         box.lwd=0)
  
  # Plot 4 - histogram
  plot(data$Time, data$Global_reactive_power, 
       type="n",
       xlab="datetime", 
       ylab="Global_reactive_power")
  
  lines(data$Time, data$Global_reactive_power)
  
  dev.off()
}
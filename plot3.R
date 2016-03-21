source("load_data.R")

plot3 <- function(data = NULL, width = 480, height = 480) {
  if (is.null(data)) {
    data <- load_dataset();
  }
  
  # Check saving plots: http://www.stat.berkeley.edu/~s133/saving.html
  png("plot3.png", width = width, height = height)
  
  # Make the plot
  plot(data$Time, data$Sub_metering_1,
       type = "l",
       xlab = "",
       ylab = "Energy sub metering",
       col = "black")
  
  # customised the selected segments
  lines(data$Time, data$Sub_metering_2, col = "red")
  lines(data$Time, data$Sub_metering_3, col = "blue")
  
  # Add a legend - line & circle
  legend("topright",
         col = c("black", "red", "blue"),
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty = 1)
  
  dev.off()
}
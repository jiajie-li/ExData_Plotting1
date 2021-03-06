source("load_data.R")

plot2 <- function(data = NULL, width = 480, height = 480) {
  if (is.null(data)) {
    data <- load_dataset();
  }
  
  # Check saving plots: http://www.stat.berkeley.edu/~s133/saving.html
  png("plot2.png", width = width, height = height)
  
  plot(data$Time, data$Global_active_power,
       type="l",
       xlab = "",
       ylab="Global Active Power (kilowatts)")

  dev.off()
}
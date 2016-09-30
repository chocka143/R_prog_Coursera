pollutantmean <- function(directory, pollutant, id = 1:332) {
  sum_of <- 0.0
  count <- 0
  for (i in id) {
    filename <- paste(directory, "/", sprintf("%03d.csv", i), sep = "")
    da <- read.csv(filename, header = TRUE)
    sum_of <- sum_of + sum(da[[pollutant]], na.rm = TRUE)
    count <- count + sum(!is.na(da[[pollutant]]))
  }
  sum_of / count
}
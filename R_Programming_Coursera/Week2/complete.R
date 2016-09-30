complete <- function(directory, id = 1:332) {
  nobs <- numeric()
  for (i in id) {
    filename <- paste(directory, "/", sprintf("%03d.csv", i), sep = "")
    da <- read.csv(filename, header = TRUE)
    ok <- sum(complete.cases(da))
    nobs <- append(nobs, ok)
  }
  datfr <- data.frame(id, nobs)
  datfr
}
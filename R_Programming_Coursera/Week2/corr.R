corr <- function(directory, threshold = 0) {
   cr <- numeric()
   for (i in 1:332) {
       filename <- paste(directory, "/", sprintf("%03d.csv", i), sep = "")
       da <- read.csv(filename, header = TRUE)
       ok <- sum(complete.cases(da))
       if (ok > threshold) {
           da1 <- complete.cases(da)
           cr1 <- cor(da$sulfate[da1], da$nitrate[da1])
           cr <- append(cr, cr1)
       }
   }
   cr
}
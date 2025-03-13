# load the libraries and dataset
library(tidyverse)
library(dslabs)
data(heights)

# make a table of category proportions
prop.table(table(heights$sex))

my_data <- heights$height
# define range of values spanning the dataset
a <- seq(min(my_data), max(my_data), length = 100)
# computes prob. for a single value
cdf_function <- function(x) {
  mean(my_data <= x)
}
cdf_values <- sapply(a, cdf_function)
plot(a, cdf_values, type = "l")

#######################
# Normal Distribution #
#######################

index <- heights$sex == "Male"
x <- heights$height[index]

# calculate the mean and standard deviation manually
average <- sum(x) / length(x)
SD <- sqrt(sum((x - average) ^ 2) / length(x))

# built-in mean and sd functions
# note that the audio and printed values disagree
average <- mean(x)
SD <- sd(x)
c(average = average, SD = SD)

# calculate standard units
z <- scale(x)

# calculate proportion of values within 2 SD mean
mean(abs(z) < 2)
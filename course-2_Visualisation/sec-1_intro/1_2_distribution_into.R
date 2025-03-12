# load the dataset
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

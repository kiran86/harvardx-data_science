library(dslabs)
data("heights")

sum(ifelse(heights$sex == "Male", 2, 1))

mean(ifelse(heights$height > 72, heights$height, 0))

inches_to_ft <- function(x) {
  x / 12
}
inches_to_ft(144)

sum(ifelse(inches_to_ft(heights$height) < 5, 1, 0))

# define a vector of length m
m <- 10
f_n <- vector(length = m)

# make a vector of factorials
for (n in 1:m) {
  f_n[n] <- factorial(n)
}

# inspect f_n
f_n

x <- 25
s <- 5

test <- function(x){
  s <- 1/x
  s
}

test(x)
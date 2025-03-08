# creating a function that computes the sum of integers 1 through n
compute_s_n <- function(n) {
  x <- 1:n
  sum(x)
}
compute_s_n(3)
compute_s_n(100)

# a very simple for-loop
for (i in 1:5) {
  print(i)
}
i

# a for-loop for our summation
m <- 25
s_n <- vector(length = m) # create an empty vector
for (n in 1:m) {
  s_n[n] <- compute_s_n(n)
}

# creating a plot for our summation function
n <- 1:m
plot(n, s_n, type = "p")

# a table of values comparing our function to the summation formula
head(data.frame(s_n = s_n, formula = n * (n + 1) / 2))
lines(n, n * (n + 1) / 2)

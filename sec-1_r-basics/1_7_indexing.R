# load data library
library(dslabs)
# calculate murder rate per capital
murder_rate <- murders$total / murders$population * 100000
# logical index by murder_rate where it less than or equal to 0.71
index <- murder_rate <= 0.71
# get the name of the states where it's less than or equal to 0.71
murders$state[index]

# now check the states of the west where murder_rate is bellow 1.0
# index by western region
west <- murders$region == "West"
# index by murder rate less than or equal to 1.0
safe <- murder_rate <= 1
# create index by these two vectors
index <- safe & west
# get the state names
murders$state[index]

## INDEXING FUNCTION  ##
x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(x)  # returns indices that are TRUE

# to determine the murder rate in Massachusetts we may do the following
index <- which(murders$state == "Massachusetts")
index
murder_rate[index]

# to obtain the indices and subsequent murder rates of New York, Florida, Texas
index <- match(c("New York", "Florida", "Texas"), murders$state)
index
murders$state[index]
murder_rate[index]

# to know whether or not each element of a first vector is in a second vector
x <- c("a", "b", "c", "d", "e")
y <- c("b", "d", "f")
y %in% x
x %in% y

# to see if Boston, Dakota, and Washington are states
c("Boston", "Dakota", "Washington") %in% murders$state

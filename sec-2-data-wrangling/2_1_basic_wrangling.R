library(dplyr)
library(dslabs)
data("murders")

# adding a column with mutate
murders  <- mutate(murders, rate = total / population * 100000)

# subsetting with filter
filter(murders, rate <= 0.71)
library(dplyr)
library(dslabs)
data("murders")

# adding a column with mutate
murders  <- mutate(murders, rate = total / population * 100000)
head(murders)

# subsetting with filter
filter(murders, rate <= 0.71)

# selecting columns with select
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)

# using pipe
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)

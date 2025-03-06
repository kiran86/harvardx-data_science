library(tidyverse)
library(dplyr)
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total / population * 100000)

# minimum, median, and maximum murder rate for the states in the West region
s <- murders %>%
  filter(region == "West") %>%
  summarise(minimum = min(rate),
            median = median((rate)),
            maximum = max(rate))
s

# accessing the components with the accessor $
s$minimum
s$median
s$maximum

# average rate unadjusted by population size
mean(murders$rate)

# average rate adjusted by population size
us_murder_rate <- murders %>%
  summarise(rate = sum(total) / sum(population) * 10 ^ 5)
us_murder_rate

# minimum, median, and maximum murder rate
# for the states in the West region
# using quantile
# note that this returns a vector
murders %>%
  filter(region == "West") %>%
  summarise(range = quantile(rate, c(0, 0.5, 1)))

# returning minimum, median, and maximum as a data frame
my_quantile <- function(x) {
  r <- quantile(x, c(0, 0.5, 1))
  data.frame(minimum = r[1], median = r[2], maximum = r[3])
}
murders %>%
  filter(region == "West") %>%
  summarise(my_quantile(rate))

# us_murder_rate (Ln 24) is stored as a data frame
class(us_murder_rate)

# the pull function can return it as a numeric value
us_murder_rate %>% pull(rate)

# using pull to save the number directly
us_murder_rate_num <- murders %>%
  summarise(rate = sum(total) / sum(population) * 10 ^ 5) %>%
  pull(rate)
us_murder_rate_num

# us_murder_rate_num is now stored as a number
class(us_murder_rate_num)

# using the dot to access the rate
us_murder_rate_num1 <- murders %>%
  summarise(rate = sum(total) / sum(population) * 10 ^ 5) %>%
  .$rate

us_murder_rate_num1
class(us_murder_rate_num1)

# group by region
murders %>% group_by(region)

# summarize after grouping
murders %>%
  group_by(region) %>%
  summarise(median = median(rate))

# SORTING DATA TABLES
# order the states by population size
murders %>% arrange(population) %>% head()

# order the states by murder rate - the default is ascending order
murders %>% arrange(rate) %>% head()

# # order the states by murder rate in descending order
murders %>% arrange(desc(rate)) %>% head()

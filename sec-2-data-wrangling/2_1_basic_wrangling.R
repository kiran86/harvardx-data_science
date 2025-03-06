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

# creating a data frame with stringAsFactors = FALSE
grades <- data.frame(
  name = c("John", "Juan", "jean", "Yao"),
  exam_1 = c(95, 80, 90, 85),
  exam_2 = c(90, 85, 85, 90)
)
grades
# check data type of name column
# by default, data.frame turns character to factor (prior R 4.0.0)
class(grades$name)

# create a data frame with stringAsFactors = FALSE
grades <- data.frame(
  name = c("John", "Juan", "jean", "Yao"),
  exam_1 = c(95, 80, 90, 85),
  exam_2 = c(90, 85, 85, 90),
  stringsAsFactors = FALSE # after R 4.0.0, this is default
)

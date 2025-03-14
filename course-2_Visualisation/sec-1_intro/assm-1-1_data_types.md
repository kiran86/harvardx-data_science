Assessment 1.1: Data Types
================

- [Instructions: Part 1, Variable
  Names](#instructions-part-1-variable-names)
- [Instructions: Part 2, Variable
  Types](#instructions-part-2-variable-types)
- [Instructions: Part 3, Numerical
  Values](#instructions-part-3-numerical-values)
- [Instructions: Part 4, Tables](#instructions-part-4-tables)
- [Instructions: Part 5, Indicator
  Variables](#instructions-part-5-indicator-variables)

#### *Assessment 1.1 has 5 parts. Each of the 5 parts includes instructions and hints.*

### Instructions: Part 1, Variable Names

The type of data we are working with will often influence the data
visualization technique we use. We will be working with two types of
variables: categorical and numeric. Each can be divided into two other
groups: categorical can be ordinal or not, whereas numerical variables
can be discrete or continuous.

We will review data types using some of the examples provided in the
`dslabs` package. For example, the `heights` dataset.

    library(dslabs)
    data(heights)

##### Instructions

Let’s start by reviewing how to extract the variable names from a
dataset using the `names` function. Write the code to reveal the two
variable `names` used in the `heights` dataset.

``` r
library(dslabs)
data(heights)
names(heights)
```

    ## [1] "sex"    "height"

### Instructions: Part 2, Variable Types

We saw that `sex` is the first variable. Confirm that the values that
are represented by this variable are categorical by looking at the first
few entries using `library()`, `data()`, and `head()`.

``` r
head(heights)
```

    ##      sex height
    ## 1   Male     75
    ## 2   Male     70
    ## 3   Male     68
    ## 4   Male     74
    ## 5   Male     61
    ## 6 Female     65

### Instructions: Part 3, Numerical Values

Keep in mind that discrete numeric data can be considered ordinal.
Although this is technically true, we usually reserve the term ordinal
data for variables belonging to a small number of different groups, with
each group having many members.

The `height` variable could be ordinal if, for example, we report a
small number of values such as short, medium, and tall. Let’s explore
how many unique values are used by the heights variable. For this we can
use the `unique` function:

    x <- c(3, 3, 3, 3, 4, 4, 2)
    unique(x)

##### Instructions

Use the `unique` and `length` functions to determine how many unique
heights were reported.

``` r
x <- heights$height
length(unique(x))
```

    ## [1] 139

### Instructions: Part 4, Tables

One of the useful outputs of data visualization is that we can learn
about the distribution of variables. For categorical data, we can
construct this distribution by simply computing the frequency of each
unique value. This can be done with the function `table`. Here is an
example:

    x <- c(3, 3, 3, 3, 4, 4, 2)
    table(x)

##### Instructions

Use the `table` function to compute the frequencies of each unique
height value. Because we are using the resulting frequency table in a
later exercise we want you to save the results into an object and call
it `tab`.

``` r
tab <- table(x)
```

### Instructions: Part 5, Indicator Variables

To see why treating the reported heights as an ordinal value is not
useful in practice, we note how many values are reported only once.

##### Instructions

In the previous exercise we computed the variable `tab` which reports
the number of times each unique value appears. For values reported only
once `tab` will be 1. Use logicals and the function `sum` to count the
number of times this happens.

``` r
sum(tab == 1)
```

    ## [1] 63

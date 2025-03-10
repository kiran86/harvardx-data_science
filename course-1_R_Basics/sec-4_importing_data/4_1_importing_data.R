# Copy the spreadsheet containing the US murders data
# (included as part of the dslabs package)
filename <- "murders.csv"
dir <- system.file("extdata", package = "dslabs")
fullpath <- file.path(dir, filename)
file.copy(fullpath, "murders.csv")

# Once the file is copied, import the data with a line of code.
# Use the read_csv function from the readr package (included in the tidyverse)
library(tidyverse)
dat <- read.csv(filename)
dat

# See an example of a full path on your system
system.file(package = "dslabs")

# Use the function list.files to see examples of relative paths
dir <- system.file(package = "dslabs")
list.files(path = dir)

# Get the full path of your working directory by using the getwd function
wd <- getwd()

# Obtain a full path without writing out explicitly
filename <- "murders.csv"
dir <- system.file("extdata", package = "dslabs")
fullpath <- file.path(dir, filename)

# By exploring the directories in dir
# we find that the extdata contains the file we want
dir <- system.file(package = "dslabs")
filename %in% list.files(file.path(dir, "extdata"))

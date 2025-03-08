# Our dslabs package is on GitHub and 
# the file we downloaded with the package has a url
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"

# Use read_csv file to read these files directly
dat <- read_csv(url)

# Use the download.file function in order to have a local copy of the file
download.file(url, "murders.csv")

# Run a command like this which erases the temporary file once it imports the data
tmp_filename <- tempfile()
download.file(url, tmp_filename)
dat <- read_csv(tmp_filename)
file.remove(tmp_filename)

# Use scan to read-in each cell of a file
path <- system.file("extdata", package = "dslabs")
filename <- "murders.csv"
x <- scan(file.path(path, filename), sep = ",", what = "c")
x

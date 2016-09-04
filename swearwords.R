# Compile swearwords list
# This script is run manually to create the swearwords R data object.
# Author: Barrie Hill - 27 July 2016
#
#
# Load swearword datasets
# sourced from https://gist.github.com/jamiew/1112488#file-google_twunter_lol
swearWords1 <- read.csv("data/swearWords1.csv", header=FALSE)
# sourced from http://ramseymohsen.com/2011/02/458-bad-words-blacklist-for-facebook-pages/
swearWords2 <- read.csv("data/swearWords2.csv", header=FALSE)
# sourced from http://www.bannedwordlist.com
swearWords3 <- read.csv("data/swearWords.csv", header=FALSE)
# My added swearwords
swearWords4 <- read.csv("data/swearWords3.csv", header=FALSE)

# Make the list tidy
swearWords1 <- as.character(swearWords1$V1)
swearWords2 <- as.character(t(swearWords2))
swearWords3  <- as.character(t(swearWords3))
swearWords4  <- as.character(t(swearWords4))

# Combine the swearword lists and remove duplicates
swearwords <- c(swearWords1,swearWords2,swearWords3,swearWords4)
swearwords <- unique(sort(swearwords))
# Save R data object
save(swearwords,file = "data/swearwords.rda")

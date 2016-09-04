# Coursera Data Science Capstone Project

## Assumptions

### Project Data Files
 It is assumed that the project data files ([Coursera-SwiftKey.zip](https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip)) have been downloaded and the English locale files extracted to the data directory in the project directory. 
 
 - data/final/en_US/en_US.blogs.txt
 - data/final/en_US/en_US.news.txt
 - data/final/en_US/en_US.twitter.txt
 
### Profanity and Offensive Words
It is assumed that a **data/swearwords.rda** file has been created. The swearwords list can be created using the **swearwords.R** script and the swearwords csv files in the data diirectory. 

Additional offensice and profanity words can be added by:

1. adding new words to the **swearWords3.csv** file in the data directory
2. rerunning the **swearwords.R** script
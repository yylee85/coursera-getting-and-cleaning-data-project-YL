
library(dplyr)


# Download and unzip UCI HAR dataset files

if(!file.exists("UCI-HAR-dataset.zip")) {
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileurl, "UCI-HAR-dataset.zip")
  unzip("UCI-HAR-dataset.zip")
}


# Read in training and test data and merge into a single data set

x.train <- read.table("./UCI HAR Dataset/train/X_train.txt")
x.test <- read.table("./UCI HAR Dataset/test/X_test.txt")
x.df <- rbind(x.train, x.test)

rm(x.train, x.test)


# Read in subjects and merge

subj.train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subj.test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subj.df <- rbind(subj.train, subj.test)

rm(subj.train, subj.test)


# Read in data labels and merge

y.train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y.test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y.df <- rbind(y.train, y.test)

rm(y.train, y.test)


# Read in features list and assign as column labels to 'x.df' dataset

filelocal <- "./UCI HAR Dataset/features.txt"
featlist <- read.table(filelocal, stringsAsFactors = FALSE)
featlist <- tolower(featlist[,2])
colnames(x.df) <- featlist

rm(filelocal, featlist)


# Extract selected columns from 'x.df' related to mean & standard deviation

x.df <- x.df[ , grepl("-mean\\(\\)|-std\\(\\)", colnames(x.df))]
colnames(x.df) <- gsub("\\(|\\)", "", colnames(x.df))


# Read activity labels into R and assign them to values of 'y.df' dataset

filelocal <- "./UCI HAR Dataset/activity_labels.txt"
activlist <- read.table(filelocal, stringsAsFactors = FALSE)
activlist[,2] <- gsub("_", "", tolower(activlist[,2]))
y.df[,1] <- activlist[y.df[,1], 2]

rm(filelocal, activlist)


# Assign column names to 'y.df' and 'subj.df' data frames

colnames(subj.df) <- "subject"
colnames(y.df) <- "activity"


# Merge data frames into a single tidy dataset arranged by subject & activity

tidy.df <- cbind(subj.df, y.df, x.df)
tidy.df <- arrange(tidy.df, subject, activity)

rm(subj.df, y.df, x.df)


# Convert data frame into tbl_df format

tidy.df <- tbl_df(tidy.df)


# Create 2nd data set of variable averages for each subject

average.df <- group_by(tidy.df, subject, activity)
average.df <- summarise_each(average.df, funs(mean))
average.df <- ungroup(average.df)


# Export tidy data set and tidy data set of variable averages as .txt file

write.table(tidy.df, file = "tidydata_YL.txt", row.names = FALSE)
write.table(average.df, file = "tidydata_average_YL.txt", row.names = FALSE)


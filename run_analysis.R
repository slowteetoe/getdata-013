# course project
if(!file.exists("UCI HAR Dataset/")){
 download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="dataset.zip", method="curl")
 unzip("dataset.zip")
}
setwd("UCI HAR Dataset/")

library(data.table)

# Grab the supplied column names
colNames <- gsub("^\\d+\\s", "", readLines("features.txt"))

# clean up column names so they conform to R conventions
# which are apparently no punctuation and lowercase
colNames <- gsub("[\\(\\)\\,\\-]", "", colNames)
colNames <- tolower(colNames)

# X_test.txt contains the sensor readings for the test set (561 variables)
# get rid of leading spaces and convert all other spaces (0 or more occurances) to a comma
# so that we can read it in via fread()
data <- gsub("\\s+", ",", sub("^\\s+", "", readLines("test/X_test.txt")))
test <- fread(paste(data, collapse='\n'), header=FALSE)
# Add the supplied column names
setnames(test, colNames)

# add in the activity id column
testActivities <- readLines("test/y_test.txt")
test[,activityId := as.numeric(testActivities)]

# add in subject id column
testSubjects <- readLines("test/subject_test.txt")
test[,subjectId := as.numeric(testSubjects)]

# Now, remove columns we don't care about
cleantest <- test[, grep("(?i)mean|std|activityId|subjectId", colnames(test)), with=FALSE]

# Do the same with the training set
data <- gsub("\\s+", ",", sub("^\\s+", "", readLines("train/X_train.txt")))
train <- fread(paste(data, collapse='\n'), header=FALSE)

# fix column names
setnames(train, colNames)

# add in the activities
trainActivities <- readLines("train/y_train.txt")
train[,activityId := as.numeric(trainActivities)]

# add in the subjects
trainSubjects <- readLines("train/subject_train.txt")
train[,subjectId := as.numeric(trainSubjects)]

# drop columns we don't care about
cleantrain <- train[, grep("(?i)mean|std|activityId|subjectId", colnames(train)), with=FALSE]

# read in the activity labels so we can apply them correctly
a <- read.delim("activity_labels.txt", sep=" ", header=FALSE)
setnames(a, c("activityId", "activity"))

testdata <- merge(cleantest, a, by="activityId")

traindata <- merge(cleantrain, a, by="activityId")

# finally, merge them together
combined <- rbind(traindata, testdata)

# get rid of activityId, since we no longer care
combined[,activityId:=NULL]

# make subjectId a factor
combined[,subjectId := as.factor(subjectId)]

# now that we have the combined and cleaned dataset, do something with it
meanTotals <- combined[, lapply(.SD, mean), by=c("activity","subjectId")]

write.table(meanTotals, file="../tidydata.txt", row.name=FALSE)

# Grab the colnames for our supporting code book
# colnames(meanTotals)

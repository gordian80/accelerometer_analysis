#load libraries
library(data.table)
library(dplyr)

#import actvity labels and features
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

#import test data from text files
X_test<- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test<- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test<- read.table("UCI HAR Dataset/test/subject_test.txt")


#import train data from text files
X_train<- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train<- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train<- read.table("UCI HAR Dataset/train/subject_train.txt")

#join test and train data
x <- rbind(X_train, X_test)
y <- rbind(Y_train, Y_test)
s <- rbind(subject_train, subject_test)

# Attach column names
colnames(x) <- t(features[2])
colnames(y) <- "Activity"
colnames(s) <- "Subject"

# Extract only the measurements on the mean and standard deviation for each measurement. 
extract_features <- grep("-mean\\(\\)|-std\\(\\)", features[,2])
x <- x[, extract_features] 

# Merge all the data
allData <- cbind(x,y,s)

# Substitute numbers in the activity coloumn with the activity names
for (i in 1:6){
    allData$Activity[allData$Activity == i] <- as.character(activity_labels[i,2])
}

# Creates a tidy data set with the average of each variable for each activity and each subject and save
# it to "tidyData.txt"

DT <- data.table(allData)
tidyData <- aggregate(. ~Subject + Activity, DT, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]

write.table(tidyData,file="tidyData.txt",sep=",",row.names = FALSE)

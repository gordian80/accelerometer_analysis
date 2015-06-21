The raw data sets are processed with run_analisys.R script to create a tidy data set.
run_analysis.R performs the following steps:

* Imports the data sets from the text files contained in the "UCI HAR Dataset" folder.
* Merges the training and the test sets to create one data set. 
* Adds subject and activity columns to the data.
* Extracts the measurements on the mean and standard deviation for each measurement. 
* Labels the data set with variable names. 
* Creates a tidy data set with the average of each variable for each activity and each subject and saves it to "tidyData.txt".

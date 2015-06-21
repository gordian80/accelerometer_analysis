run_analysis.R is used to create create a tidy data set from the data available at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The script performs the following steps:

* Imports data sets from text files contained in the "UCI HAR Dataset" folder.
* Merges the training and the test sets to create one data set. 
* Adds subject and activity columns to the data.
* Extracts the measurements on the mean and standard deviation for each measurement. 
* Labels the data set with variable names. 
* Creates a tidy data set with the average of each variable for each activity and each subject and saves it to "tidyData.txt".

Libraries
---------

The script requires data.table and dplyr packages.
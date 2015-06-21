This code book describes the variables in the data and the transformations that have been performed to clean up the data.
The original data is available at the following [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

* Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

* Data transformation

The raw data sets are processed with run_analisys.R script to create a tidy data set.

The following transformations are performed:
1.
Merge training and test sets

Test and training data (X_train.txt, X_test.txt), subject ids (subject_train.txt, subject_test.txt) and activity ids (y_train.txt, y_test.txt) are merged to obtain a single data set. Variables are labelled with the names assigned by original collectors (features.txt).
Extract mean and standard deviation variables

From the merged data set is extracted and intermediate data set with only the values of estimated mean (variables with labels that contain "mean") and standard deviation (variables with labels that contain "std").
Use descriptive activity names

A new column is added to intermediate data set with the activity description. Activity id column is used to look up descriptions in activity_labels.txt.
Label variables appropriately

Labels given from the original collectors were changed: to obtain valid R names without parentheses, dashes and commas to obtain more descriptive labels
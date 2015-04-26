---
date: "April 20, 2015"
output: pdf_document
---




Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data Analysis Explanation

The analysis process is described in the following steps.

1. Download the data in working directory, unzip.
2.Read the train and test data set.
3. Read the feature list and names onto the data object.
3. Concatenate the data tables by rows.
4. Merge columns to get the data frame "data" for all data.
5. Subset only std and mean features from list, include class and subject.
6. Read activities in readable form, and rename it.
6. Merge data, subjects, and labels to single form.
7. Make the features in human readable form.
8. For each activity in a subject, get the full list of measurements.
9. Calculate the mean of each of these activities.
10. Write tidy data set into txt file.

























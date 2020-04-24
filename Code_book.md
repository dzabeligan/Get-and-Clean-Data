---
title: "Codebook: Getting and Cleaning Data (Course Project)"
author: "Elijah"
date: "24-04-2020"
output: 
  html_document:
    keep_md: yes
---

## Project Description
Collected, worked with, and cleaned a data set.

The date set represents data collected from the accelerometers and gyrometers from 30 individuals wearing a smartphone on their waists. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



##Study design and data processing
The run_analysis.R script worked on the data set to produce a tidy data set that can be used for further analysis.

###Collection of the raw data
Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


##Creating the tidy datafile

###Guide to create the tidy data file
Description on how to create the tidy data file:
1. download the data, 
2. merge the training and the test sets to create one data set. 
3. extract only the measurements on the mean and standard deviation for each measurement. 
4. use descriptive activity names to name the activities in the data set, 
5. appropriately label the data set with descriptive variable names.
6. from the data set in step 5, create a second, independent tidy data set with the average of each variable for each activity and each subject.)/

**activity**

- *Values*: [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]
    
- *Description*: Activity performed by the subject
	
**subject**

- *Values*: [1 to 30]
	
- *Description*: Subject identifier to mark which volunteer performed the recorded activity, number 1 through 30  
	
**time_Body_acceleration_mean.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the body linear acceleration in the X axis
	
**time_Body_acceleration_mean.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the body linear acceleration in the Y axis
	
**time_Body_acceleration_mean.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the body linear acceleration in the Z axis
	
**time_Body_acceleration_std.X**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the body linear acceleration in the X axis
	
**time_Body_acceleration_std.Y**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the body linear acceleration in the Y axis
	
**time_Body_acceleration_std.Z**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the body linear acceleration in the Z axis
	
**time_gravity_acceleration_mean.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the gravity linear acceleration in the X axis
	
**time_gravity_acceleration_mean.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the gravity linear acceleration in the Y axis
	
**time_gravity_acceleration_mean.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the gravity linear acceleration in the Z axis
	
**time_gravity_acceleration_std.X**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the gravity linear acceleration in the X axis
	
**time_gravity_acceleration_std.Y**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the gravity linear acceleration in the Y axis
	
**time_gravity_acceleration_std.Z**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the gravity linear acceleration in the Z axis
	
**timeBodyAccelerationJerkMean.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain jerk signal indicating the body linear acceleration in the X axis
	
**timeBodyAccelerationJerkMean.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain jerk signal indicating the body linear acceleration in the Y axis
	
**timeBodyAccelerationJerkMean.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain jerk signal indicating the body linear acceleration in the Z axis
	
**timeBodyAccelerationJerkStd.X**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain jerk signal indicating the body linear acceleration in the X axis
	
**timeBodyAccelerationJerkStd.Y**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain jerk signal indicating the body linear acceleration in the Y axis
	
**timeBodyAccelerationJerkStd.Z**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain jerk signal indicating the body linear acceleration in the Z axis
	
**timeBodyGyroscopeMean.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the body angular velocity in the X axis
	
**timeBodyGyroscopeMean.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the body angular velocity in the Y axis
	
**timeBodyGyroscopeMean.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the body angular velocity in the Z axis
	
**timeBodyGyroscopeStd.X**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the body angular velocity in the X axis
	
**timeBodyGyroscopeStd.Y**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the body angular velocity in the Y axis
	
**timeBodyGyroscopeStd.Z**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the body angular velocity in the Z axis
	
**timeBodyGyroscopeJerkMean.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain jerk signal indicating the body angular velocity in the X axis
	
**timeBodyGyroscopeJerkMean.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain jerk signal indicating the body angular velocity in the Y axis
	
**timeBodyGyroscopeJerkMean.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain jerk signal indicating the body angular velocity in the Z axis
	
**timeBodyGyroscopeJerkStd.X**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain jerk signal indicating the body angular velocity in the X axis
	
**timeBodyGyroscopeJerkStd.Y**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain jerk signal indicating the body angular velocity in the Y axis
	
**timeBodyGyroscopeJerkStd.Z**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain jerk signal indicating the body angular velocity in the Z axis
	
**timeBodyAccelerationMagnitudeMean**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the body linear acceleration magnitude
	
**timeBodyAccelerationMagnitudeStd**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the body linear acceleration magnitude
	
**timeGravityAccelerationMagnitudeMean**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the gravity linear acceleration magnitude
	
**timeGravityAccelerationMagnitudeStd**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the gravity linear acceleration magnitude
	
**timeBodyAccelerationJerkMagnitudeMean**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain jerk signal indicating the body linear acceleration magnitude
	
**timeBodyAccelerationJerkMagnitudeStd**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain jerk signal indicating the body linear acceleration magnitude
	
**timeBodyGyroscopeMagnitudeMean**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain signal indicating the body angular velocity magnitude
	
**timeBodyGyroscopeMagnitudeStd**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain signal indicating the body angular velocity magnitude
	
**timeBodyGyroscopeJerkMagnitudeMean**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the time domain jerk signal indicating the body angular velocity magnitude
	
**timeBodyGyroscopeJerkMagnitudeStd**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the time domain jerk signal indicating the body angular velocity magnitude
	
**freqBodyAccelerationMean.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain signal indicating the body linear acceleration in the X axis
	
**freqBodyAccelerationMean.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain signal indicating the body linear acceleration in the Y axis
	
**freqBodyAccelerationMean.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain signal indicating the body linear acceleration in the Z axis
	
**freqBodyAccelerationStd.X**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain signal indicating the body linear acceleration in the X axis
	
**freqBodyAccelerationStd.Y**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain signal indicating the body linear acceleration in the Y axis
	
**freqBodyAccelerationStd.Z**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain signal indicating the body linear acceleration in the Z axis
	
**freqBodyAccelerationMeanFrequency.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean frequency of the frequency domain signal indicating the body linear acceleration in the X axis
	
**freqBodyAccelerationMeanFrequency.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean frequency of the frequency domain signal indicating the body linear acceleration in the Y axis
	
**freqBodyAccelerationMeanFrequency.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean frequency of the frequency domain signal indicating the body linear acceleration in the Z axis
	
**freqBodyAccelerationJerkMean.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain jerk signal indicating the body linear acceleration in the X axis
	
**freqBodyAccelerationJerkMean.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain jerk signal indicating the body linear acceleration in the Y axis
	
**freqBodyAccelerationJerkMean.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain jerk signal indicating the body linear acceleration in the Z axis
	
**freqBodyAccelerationJerkStd.X**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain jerk signal indicating the body linear acceleration in the X axis
	
**freqBodyAccelerationJerkStd.Y**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain jerk signal indicating the body linear acceleration in the Y axis
	
**freqBodyAccelerationJerkStd.Z**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain jerk signal indicating the body linear acceleration in the Z axis
	
**freqBodyAccelerationJerkMeanFrequency.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean frequency of the frequency domain jerk signal indicating the body linear acceleration in the X axis
	
**freqBodyAccelerationJerkMeanFrequency.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean frequency of the frequency domain jerk signal indicating the body linear acceleration in the Y axis
	
**freqBodyAccelerationJerkMeanFrequency.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean frequency of the frequency domain jerk signal indicating the body linear acceleration in the Z axis
	
**freqBodyGyroscopeMean.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain signal indicating the body angular velocity in the X axis
	
**freqBodyGyroscopeMean.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain signal indicating the body angular velocity in the Y axis
	
**freqBodyGyroscopeMean.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain signal indicating the body angular velocity in the Z axis
	
**freqBodyGyroscopeStd.X**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain signal indicating the body angular velocity in the X axis
	
**freqBodyGyroscopeStd.Y**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain signal indicating the body angular velocity in the Y axis
	
**freqBodyGyroscopeStd.Z**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain signal indicating the body angular velocity in the Z axis
	
**freqBodyGyroscopeMeanFrequency.X**

- *Values*: [-1 to 1]
	
- *Description*: the mean frequency of the frequency domain signal indicating the body angular velocity in the X axis
	
**freqBodyGyroscopeMeanFrequency.Y**

- *Values*: [-1 to 1]
	
- *Description*: the mean frequency of the frequency domain signal indicating the body angular velocity in the Y axis
	
**freqBodyGyroscopeMeanFrequency.Z**

- *Values*: [-1 to 1]
	
- *Description*: the mean frequency of the frequency domain signal indicating the body angular velocity in the Z axis
	
**freqBodyAccelerationMagnitudeMean**

- *Values*: [-1 to 1]
	
- *Description*: the mean of frequency time domain signal indicating the body linear acceleration magnitude
	
**freqBodyAccelerationMagnitudeStd**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of frequency time domain signal indicating the body linear acceleration magnitude
	
**freqBodyAccelerationMagnitudeMeanFrequency**

- *Values*: [-1 to 1]
	
- *Description*: the mean freqyency of frequency time domain signal indicating the body linear acceleration magnitude
	
**freqBodyAccelerationJerkMagnitudeMean**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain jerk signal indicating the body linear acceleration magnitude
	
**freqBodyAccelerationJerkMagnitudeStd**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain jerk signal indicating the body linear acceleration magnitude
	
**freqBodyAccelerationJerkMagnitudeMeanFrequency**

- *Values*: [-1 to 1]
	
- *Description*: the mean freqyency of the frequency domain jerk signal indicating the body linear acceleration magnitude
	
**freqBodyGyroscopeMagnitudeMean**

- *Values*: [-1 to 1]
	
- *Description*: the mean of frequency time domain signal indicating the body angular velocity magnitude
	
**freqBodyGyroscopeMagnitudeStd**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of frequency time domain signal indicating the body angular velocity magnitude
	
**freqBodyGyroscopeMagnitudeMeanFrequency**

- *Values*: [-1 to 1]
	
- *Description*: the mean freqyency of frequency time domain signal indicating the body angular velocity magnitude
	
**freqBodyGyroscopeJerkMagnitudeMean**

- *Values*: [-1 to 1]
	
- *Description*: the mean of the frequency domain jerk signal indicating the body angular velocity magnitude
	
**freqBodyGyroscopeJerkMagnitudeStd**

- *Values*: [-1 to 1]
	
- *Description*: the standard deviation of the frequency domain jerk signal indicating the body angular velocity magnitude
	
**freqBodyGyroscopeJerkMagnitudeMeanFrequency**

- *Values*: [-1 to 1]
	
- *Description*: the mean freqyency of the frequency domain jerk signal indicating the body angular velocity magnitude
	

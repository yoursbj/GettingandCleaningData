### Human Activity Recognition Using Smartphones Dataset - Processed for getdata-008 Course Project

Description:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  
The dataset is reshaped from Human Activity Recognition Using Smartphones Dataset.

Variables:
1 subject
2 activity
	(1) WALKING
	(2) WALKING_UPSTAIRS
	(3) WALKING_DOWNSTAIRS
	(4) SITTING
	(5) STANDING
	(6) LAYING
3 tBodyAcc-std()-X
4 tBodyAcc-std()-Y
5 tBodyAcc-std()-Z
6 tGravityAcc-std()-X
7 tGravityAcc-std()-Y
8 tGravityAcc-std()-Z
9 tBodyAccJerk-std()-X
10 tBodyAccJerk-std()-Y
11 tBodyAccJerk-std()-Z
12 tBodyGyro-std()-X
13 tBodyGyro-std()-Y
14 tBodyGyro-std()-Z
15 tBodyGyroJerk-std()-X
16 tBodyGyroJerk-std()-Y
17 tBodyGyroJerk-std()-Z
18 tBodyAccMag-std()
19 tGravityAccMag-std()
20 tBodyAccJerkMag-std()
21 tBodyGyroMag-std()
22 tBodyGyroJerkMag-std()
23 fBodyAcc-std()-X
24 fBodyAcc-std()-Y
25 fBodyAcc-std()-Z
26 fBodyAccJerk-std()-X
27 fBodyAccJerk-std()-Y
28 fBodyAccJerk-std()-Z
29 fBodyGyro-std()-X
30 fBodyGyro-std()-Y
31 fBodyGyro-std()-Z
32 fBodyAccMag-std()
33 fBodyBodyAccJerkMag-std()
34 fBodyBodyGyroMag-std()
35 fBodyBodyGyroJerkMag-std()
36 tBodyAcc-mean()-X
37 tBodyAcc-mean()-Y
38 tBodyAcc-mean()-Z
39 tGravityAcc-mean()-X
40 tGravityAcc-mean()-Y
41 tGravityAcc-mean()-Z
42 tBodyAccJerk-mean()-X
43 tBodyAccJerk-mean()-Y
44 tBodyAccJerk-mean()-Z
45 tBodyGyro-mean()-X
46 tBodyGyro-mean()-Y
47 tBodyGyro-mean()-Z
48 tBodyGyroJerk-mean()-X
49 tBodyGyroJerk-mean()-Y
50 tBodyGyroJerk-mean()-Z
51 tBodyAccMag-mean()
52 tGravityAccMag-mean()
53 tBodyAccJerkMag-mean()
54 tBodyGyroMag-mean()
55 tBodyGyroJerkMag-mean()
56 fBodyAcc-mean()-X
57 fBodyAcc-mean()-Y
58 fBodyAcc-mean()-Z
59 fBodyAcc-meanFreq()-X
60 fBodyAcc-meanFreq()-Y
61 fBodyAcc-meanFreq()-Z
62 fBodyAccJerk-mean()-X
63 fBodyAccJerk-mean()-Y
64 fBodyAccJerk-mean()-Z
65 fBodyAccJerk-meanFreq()-X
66 fBodyAccJerk-meanFreq()-Y
67 fBodyAccJerk-meanFreq()-Z
68 fBodyGyro-mean()-X
69 fBodyGyro-mean()-Y
70 fBodyGyro-mean()-Z
71 fBodyGyro-meanFreq()-X
72 fBodyGyro-meanFreq()-Y
73 fBodyGyro-meanFreq()-Z
74 fBodyAccMag-mean()
75 fBodyAccMag-meanFreq()
76 fBodyBodyAccJerkMag-mean()
77 fBodyBodyAccJerkMag-meanFreq()
78 fBodyBodyGyroMag-mean()
79 fBodyBodyGyroMag-meanFreq()
80 fBodyBodyGyroJerkMag-mean()
81 fBodyBodyGyroJerkMag-meanFreq()

The steps to reshaped the dataset:
1 Read data from train dataset.
2 Read data from test dataset.
3 Merges the training and the test sets to create one data set.
4 Appropriately labels the data set with descriptive variable names.
5 Uses descriptive activity names to name the activities in the data set.
6 Extracts only the measurements on the mean and standard deviation for each measurement. 
7 Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
8 Write the data to a file.
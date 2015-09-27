To run,

Open the R terminal and apply the command:
    source('runAnalysis.R')

This will create the file 'result.txt'

Transformations applied to create this data set
*    1) Using the UCI HAR Dataset
*    2) Read in features.txt and apply the following transforms to the labels
*        2.1) fBodyAcc -> Average Of Fast Fourier Transform Of Body 
*        2.2) fGravityAcc -> Average Of Fast Fourier Transform Of Gravity Accelerometer
*        2.3) fBodyGyro -> Average Of Fast Fourier Transform Of Body Gyroscope
*        2.4) tBodyAcc -> Average Of Time Of Body Accelerometer
*        2.5) tGravityAcc -> Average Of Time Of Gravity Accelerometer
*        2.6) tBodyGyro -> Average Of Time Of Body Gyroscope
*        2.7) Jerk ->  with Jerking
*        2.8) Mag ->  and Magnitude
*        2.9) [-]mean -> \s mean
*        2.10) [-]std -> \s standard deviation
*        2.11) [-]X ->  in the X direction
*        2.12) [-]Y ->  in the X direction
*    3) Read in 'activity_labels.txt'
*    4) Read in 'train/subject_train.txt'
*    5) Read in 'train/y_train.txt'
*    5) Read in 'train/X_train.txt'
*    6) Read in 'test/subject_test.txt'
*    7) Read in 'test/y_test.txt'
*    8) Read in 'test/X_test.txt'
*    9) Replace the columnnames of x_train and xtest with the features from 2)
*    10) Replace column names of y_train and y_test with "Activity"
*    11) Replace the column names of subjec_train and subject_test with "Subject"
*    12) Merge the test and train data sets
*    13) filter the X data set for those with mean() and std() in their label
*    14) Join the X, Y, and subject datasets together
*    15) Rename all Activity values with their string equivalent
*        15.1) 1 -> WALKING
*        15.2) 2 -> WALKING_UPSTAIRS
*        15.3) 3 -> WALKING_DOWNSTAIRS
*        15.4) 4 -> SITTING
*        15.5) 5 -> STANDING
*        15.5) 6 -> LAYING
*    16) Group the dataset by activity and subject and apply mean on each column
*    17) Write the results to 'result.txt'

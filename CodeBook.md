CodeBook for Wearing Computing Data Set

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
    


Activity engaged in by Participants
"Activity" 
Possible values:
*    WALKING
*    WALKING_UPSTAIRS
*    WALKING_DOWNSTAIRS
*    SITTING
*    STANDING
*    LAYING


Particpants
There were 30 participants in total. They are numbered 1 - 30
"Subject" 
Possible Values:
*    1 - 30

Body Accelerometer Data
    The Body accelerometer data is a floating point number specified for each direction; X, Y, and Z.
    The values presented is the average of the raw data grouped by participants and activity.
    For example, "Average Of Time of Body Accelerator's mean in the X direction" has 
*        1) Taken the mean of the Accelerometer's data in the X direction
*        2) Averaged it across each participant and activity

    Equipment:
        Each unique equipment provides 
        Body Accelerometer in 'gs'
        Body Gyroscope in 'radians/second'
        Gravity Accelerometer in 'gs'
    Calculations
        Mean
        Standard Deviation - specifies the standard deviation of the 
    Captures:
        Jerking
        Magnitude
    Directions
        X coordinate plane
        Y coordinate plane
        Z coordinate plane

* Average Of Time Of Body Accelerometer's mean in the X direction 
* Average Of Time Of Body Accelerometer's mean in the X direction.1 
* Average Of Time Of Body Accelerometer's mean in the Z direction 
* Average Of Time Of Body Accelerometer's standard deviation in the X direction 
* Average Of Time Of Body Accelerometer's standard deviation in the X direction.1 
* Average Of Time Of Body Accelerometer's standard deviation in the Z direction 
* Average Of Time Of Gravity Accelerometer's mean in the X direction 
* Average Of Time Of Gravity Accelerometer's mean in the X direction.1 
* Average Of Time Of Gravity Accelerometer's mean in the Z direction 
* Average Of Time Of Gravity Accelerometer's standard deviation in the X direction 
* Average Of Time Of Gravity Accelerometer's standard deviation in the X direction.1 
* Average Of Time Of Gravity Accelerometer's standard deviation in the Z direction 
* Average Of Time Of Body Accelerometer with Jerking's mean in the X direction 
* Average Of Time Of Body Accelerometer with Jerking's mean in the X direction.1 
* Average Of Time Of Body Accelerometer with Jerking's mean in the Z direction 
* Average Of Time Of Body Accelerometer with Jerking's standard deviation in the X direction 
* Average Of Time Of Body Accelerometer with Jerking's standard deviation in the X direction.1 
* Average Of Time Of Body Accelerometer with Jerking's standard deviation in the Z direction 
* Average Of Time Of Body Gyroscope's mean in the X direction 
* Average Of Time Of Body Gyroscope's mean in the X direction.1 
* Average Of Time Of Body Gyroscope's mean in the Z direction 
* Average Of Time Of Body Gyroscope's standard deviation in the X direction 
* Average Of Time Of Body Gyroscope's standard deviation in the X direction.1 
* Average Of Time Of Body Gyroscope's standard deviation in the Z direction 
* Average Of Time Of Body Gyroscope with Jerking's mean in the X direction 
* Average Of Time Of Body Gyroscope with Jerking's mean in the X direction.1 
* Average Of Time Of Body Gyroscope with Jerking's mean in the Z direction 
* Average Of Time Of Body Gyroscope with Jerking's standard deviation in the X direction 
* Average Of Time Of Body Gyroscope with Jerking's standard deviation in the X direction.1 
* Average Of Time Of Body Gyroscope with Jerking's standard deviation in the Z direction 
* Average Of Time Of Body Accelerometer and Magnitude's mean 
* Average Of Time Of Body Accelerometer and Magnitude's standard deviation 
* Average Of Time Of Gravity Accelerometer and Magnitude's mean 
* Average Of Time Of Gravity Accelerometer and Magnitude's standard deviation 
* Average Of Time Of Body Accelerometer with Jerking and Magnitude's mean 
* Average Of Time Of Body Accelerometer with Jerking and Magnitude's standard deviation 
* Average Of Time Of Body Gyroscope and Magnitude's mean 
* Average Of Time Of Body Gyroscope and Magnitude's standard deviation 
* Average Of Time Of Body Gyroscope with Jerking and Magnitude's mean 
* Average Of Time Of Body Gyroscope with Jerking and Magnitude's standard deviation 


Fast Fourier Transform Data
    This data set applies the fast fourier tranform onto the Body accelerometer data above.  
    Each data point is a floating point number specified for each direction; X, Y, and Z.
    The values presented is the average of the raw data grouped by participants and activity.
    For example, "Average Of Fast Fourier Transform Of Body Accelerometer's mean in the X direction" 
*        1) Taken the mean of the Accelerometer's data in the X direction
*        2) Applied the Fast Fourier Transform 
*        3) Averaged across each participant and activity

    Equipment:
        Each unique equipment provides 
        Body Accelerometer in 'gs'
        Body Gyroscope in 'radians/sec'
        Gravity Accelerometer in 'gs'
    Calculations
        Mean
        Standard Deviation - specifies the standard deviation of the 
    Captures:
        Jerking
        Magnitude
    Directions
        X coordinate plane
        Y coordinate plane
        Z coordinate plane

* Average Of Fast Fourier Transform Of Body Accelerometer's mean in the X direction 
* Average Of Fast Fourier Transform Of Body Accelerometer's mean in the X direction.1 
* Average Of Fast Fourier Transform Of Body Accelerometer's mean in the Z direction 
* Average Of Fast Fourier Transform Of Body Accelerometer's standard deviation in the X direction 
* Average Of Fast Fourier Transform Of Body Accelerometer's standard deviation in the X direction.1 
* Average Of Fast Fourier Transform Of Body Accelerometer's standard deviation in the Z direction 
* Average Of Fast Fourier Transform Of Body Accelerometer with Jerking's mean in the X direction 
* Average Of Fast Fourier Transform Of Body Accelerometer with Jerking's mean in the X direction.1 
* Average Of Fast Fourier Transform Of Body Accelerometer with Jerking's mean in the Z direction 
* Average Of Fast Fourier Transform Of Body Accelerometer with Jerking's standard deviation in the X direction 
* Average Of Fast Fourier Transform Of Body Accelerometer with Jerking's standard deviation in the X direction.1 
* Average Of Fast Fourier Transform Of Body Accelerometer with Jerking's standard deviation in the Z direction 
* Average Of Fast Fourier Transform Of Body Gyroscope's mean in the X direction 
* Average Of Fast Fourier Transform Of Body Gyroscope's mean in the X direction.1 
* Average Of Fast Fourier Transform Of Body Gyroscope's mean in the Z direction 
* Average Of Fast Fourier Transform Of Body Gyroscope's standard deviation in the X direction 
* Average Of Fast Fourier Transform Of Body Gyroscope's standard deviation in the X direction.1 
* Average Of Fast Fourier Transform Of Body Gyroscope's standard deviation in the Z direction 
* Average Of Fast Fourier Transform Of Body Accelerometer and Magnitude's mean 
* Average Of Fast Fourier Transform Of Body Accelerometer and Magnitude's standard deviation 
* Average Of Fast Fourier Transform Of Body Accelerometer with Jerking and Magnitude's mean 
* Average Of Fast Fourier Transform Of Body Accelerometer with Jerking and Magnitude's standard deviation 
* Average Of Fast Fourier Transform Of Body Gyroscope and Magnitude's mean 
* Average Of Fast Fourier Transform Of Body Gyroscope and Magnitude's standard deviation 
* Average Of Fast Fourier Transform Of Body Gyroscope with Jerking and Magnitude's mean 
* Average Of Fast Fourier Transform Of Body Gyroscope with Jerking and Magnitude's standard deviation

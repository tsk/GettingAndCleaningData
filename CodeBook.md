Features for tidy_data_m_std.txt data set
=================

**subject.id:**

    Numeric Record that represent an anonymous person

**activity:**
    
    String Record with six possible activities that the subject can perform while using her/his Smartphone

    LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS


The next features were taken from the original Data Set. Citing the original *feature_info.txt* file

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc.XYZ and tGyro.XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc.XYZ and tGravityAcc.XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk.XYZ and tBodyGyroJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc.XYZ, fBodyAccJerk.XYZ, fBodyGyro.XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern:  
> '.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The signals are the same as the original Data Set:

- tBodyAcc.XYZ
- tGravityAcc.XYZ
- tBodyAccJerk.XYZ
- tBodyGyro.XYZ
- tBodyGyroJerk.XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc.XYZ
- fBodyAccJerk.XYZ
- fBodyGyro.XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

But we only use the set of variables:

- mean(): Mean value
- std(): Standar deviation

Note: The complete list of variables of each feature vector is vailable in *'features.txt'*

Coursera - Getting and Cleaning Data Course Project
===============
**getdata.R**: First run this script to download and uncompress the course project data.

**run_analysis.R**: Take the train and test data set from the Course Project DataSet and merge to get a biger data set.

1. Read the activity_labels.txt file
2. Read the features.txt file
3. Read and merge the X_train and X_test data set into X data set
4. Change the names for the columns in our new X data set
5. Read and Merge the y_test and y_train data set into y data set
6. Replace the numeric activity values using the corresponding activity string values
7. Read and merger the subject test and train data set into the subject data set
8. Merge the subject,y and X data set into one tidy data set
9. Extract the columns for the means and standard deviation from our tidy data set to create the mean+std data set
10. Create a tidy data set that containts the average of each variable for each activity and each subject. 
11. Save the Data Sets to disk
12. Create a more compact (221kb) tidy data avg data set to upload to coursera project page.


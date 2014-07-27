#Read the activity_labels.txt file
activities <- read.table("Data/UCI HAR Dataset/activity_labels.txt")
colnames(activities)[1] <- "id"
colnames(activities)[2] <- "name"
#Read the features.txt file
features <- read.table("Data/UCI HAR Dataset/features.txt")
colnames(features) <- c("id","name")
features$name<-gsub("-",".",features$name)
#Read the X_train and X_test data set
X_test <- read.table('Data/UCI HAR Dataset/test/X_test.txt')
X_train <- read.table("Data/UCI HAR Dataset/train/X_train.txt")

#Merge X_test and X_train and change the names for the columns
X <- rbind(X_test,X_train)
colnames(X) <- features$name

#Read and Merge the y_test and y_train data set
y_train <- read.table('Data/UCI HAR Dataset/train/y_train.txt')
y_test <- read.table("Data/UCI HAR Dataset/test/y_test.txt")
y <- rbind(y_test,y_train)

#Replace the numeric activity values using the corresponding activity string values
colnames(y) <- c('activity')
m <-match(y$activity,activities$id)
y$activity <- activities[m,2]

#Read and merger the subject test and train data set
subject_train <- read.table("Data/UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("Data/UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_test,subject_train)
colnames(subject) <- c("subject.id")

#Merge the subject,y and X data set into one tidy data set
tidy_data <- cbind(subject,y,X)

#Columns that containts the desired mesurments
cols <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,
          161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,
          266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,
          503,504,516,517,529,530,542,543)
cols <- c(2)+cols
cols_extract <- c(c(1,2),cols)
#Extract the means and standard deviation from our tidy data set
tidy_data_m_std <- tidy_data[cols_extract]

#Create a tidy data set that containts the average of each variable for each activity and each subject. 
library(reshape2)

measurments <- names(tidy_data)[-c(1,2)]
m_melt <- melt(tidy_data,id=c('subject.id','activity'),measure.vars=measurments)
tidy_data_avg <- dcast(m_melt,subject.id+activity~measurments,mean)

#Saving Data
write.table(tidy_data_m_std,"tidy_data_mean_std.txt",sep="\t")
write.table(tidy_data_avg,"tidy_data_avg.txt",sep="\t")

#Save a more compact tidy_data_avg to upload
measurments_c <- names(tidy_data_m_std)[-c(1,2)]
m_melt_c <- melt(tidy_data_m_std,id=c('subject.id','activity'),measure.vars=measurments)
tidy_data_avg_c <- dcast(m_melt,subject.id+activity~measurments,mean)

write.table(tidy_data_avg_c,"tidy_data_avg_c.txt",sep="\t")

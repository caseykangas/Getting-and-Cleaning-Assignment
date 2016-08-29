## Code Book

This code book describes the variables, data, and summaries performed on the Human Activity Recognition Using Smartphones Dataset.

## Data Analysis Steps

The raw data can be downloaded directly from the UCI Machine Learning Repository. Below is a list of the steps performed to obtain a couple of tidy datasets, the second of which aggregates the averages of each mean and standard deviation variable by activity and subject.

* Download and unzip the test and training datasets
* Use read.table to ingest the datasets into data frames
* Ingest several lookup tables containing activity id defintions and feature column names
* Use rbind to merge the test and training datasets
* Limit the hundreds of fields down to just the mean and standard deviation related measurements
* Create a second, tidy dataset with the average of each variable for each activity and each subject

## Identifier Fields

* subject_id: numeric field identifying each person in the study
* activity_id: the activity performed that is being measured
* activity: a more descriptive version (in English) of the activity_id field

## Measurements

The following is a listing of all continuous measures contained in the final datasets

* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-std()-Y
* tGravityAcc-mean()-Y
* tGravityAcc-std()-Y
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-std()-Y
* tBodyGyro-mean()-Y
* tBodyGyro-std()-Y
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-std()-Y
* tBodyAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyGyroMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-std()-X
* fBodyAcc-meanFreq()-X
* fBodyAccJerk-mean()-X
* fBodyAccJerk-std()-X
* fBodyAccJerk-meanFreq()-X
* fBodyGyro-mean()-X
* fBodyGyro-std()-X
* fBodyGyro-meanFreq()-X
* fBodyAccMag-mean()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroJerkMag-mean()
* tBodyAcc-mean()-Z
* tBodyAcc-std()-Z
* tGravityAcc-mean()-Z
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-Z
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-Z
* tGravityAccMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroJerkMag-mean()
* fBodyAcc-mean()-Y
* fBodyAcc-std()-Y
* fBodyAcc-meanFreq()-Y
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-std()-Y
* fBodyAccJerk-meanFreq()-Y
* fBodyGyro-mean()-Y
* fBodyGyro-std()-Y
* fBodyGyro-meanFreq()-Y
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-std()
* tBodyAcc-std()-X
* tGravityAcc-mean()-X
* tGravityAcc-std()-X
* tBodyAccJerk-mean()-X
* tBodyAccJerk-std()-X
* tBodyGyro-mean()-X
* tBodyGyro-std()-X
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-std()-X
* tBodyAccMag-mean()
* tGravityAccMag-std()
* tBodyGyroMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-Z
* fBodyAcc-std()-Z
* fBodyAcc-meanFreq()-Z
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-Z
* fBodyAccJerk-meanFreq()-Z
* fBodyGyro-mean()-Z
* fBodyGyro-std()-Z
* fBodyGyro-meanFreq()-Z
* fBodyAccMag-meanFreq()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroJerkMag-meanFreq()
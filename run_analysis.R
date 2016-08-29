# download and extract the data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile="./uci-data.zip")
unzip(zipfile="./uci-data.zip",exdir=".")

# ingest training txt files
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# ingest test txt files
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# ingest lookup tables
features <- read.table('./UCI HAR Dataset/features.txt')
activities = read.table('./UCI HAR Dataset/activity_labels.txt')

# rename fields
colnames(train_x) <- features[,2] 
colnames(train_y) <-"activity_id"
colnames(subject_train) <- "subject_id"
colnames(test_x) <- features[,2] 
colnames(test_y) <- "activity_id"
colnames(subject_test) <- "subject_id"
colnames(activities) <- c('activity_id','activity')

# merge datasets
train <- cbind(train_y, subject_train, train_x)
test <- cbind(test_y, subject_test, test_x)
all_combined <- rbind(train, test)

# per instructions, only keep means and standard deviations for each measurement
all_fields <- colnames(all_combined)
stats <- (grepl("activity_id",all_fields)|grepl("subject_id",all_fields)|grepl("mean..",all_fields)|grepl("std..",all_fields))
final_ds <- all_combined[,stats == TRUE]

# merge in more descriptive activity names
final_ds <- merge(final_ds, activities, by='activity_id', all.x=TRUE)

# make a tidy dataset with the average of each variable for each activity and each subject
mean_by_activity <- aggregate(. ~subject_id + activity_id, final_ds, mean)
write.table(mean_by_activity, "mean_by_activity.txt", row.name=FALSE)






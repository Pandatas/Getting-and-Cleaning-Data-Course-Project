# Coursera John Hopkins Data Science - Getting and Cleaning data
# Course Project Week 4
# run_analysis.R


# Load the original data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
#unzip the original data
unzip("getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")


# Load the training and test set files
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE, sep="")
y_train<- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE, sep="")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep="")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE, sep="")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE, sep="")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep="")

# Load the features file and store it into "features". Features contains the column names for X_train and X_test
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE, sep="")

# Load the activity labels file and store it into "activity_labels"
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep="")

# Add column names to the data (step 4; see below)
colnames(X_train) <- features[,2]
colnames(y_train) <- "activity_id"
colnames(subject_train) <- "subject_id"
colnames(X_test) <- features[,2]
colnames(y_test) <- "activity_id"
colnames(subject_test) <- "subject_id"
colnames(activity_labels ) <- c('activity_id','activity_type')

# Combine all the data of the trainingsset into one dataframe
trainingset <-cbind(X_train,y_train, subject_train)
# Combine all the data of the testset into one dataframe
testset <- cbind(X_test,y_test, subject_test)
# Merge the trainingset and testset into mergedset (step 1)
mergedset <-rbind(trainingset, testset)


# Extract only the measurements on the mean and standard deviation for each measurement. (step 2)
# Column names of mergedset
column_names_mergedset = colnames(mergedset)
# Save new set with columns which contain "mean" or "std" in Mean_std_set 
mean_and_std =(grepl("activity_id", column_names_mergedset) | grepl("subject_id", column_names_mergedset) | grepl("mean..",column_names_mergedset) | grepl("std..",column_names_mergedset))
subset_mean_std <- mergedset[ , mean_and_std == TRUE]

# Use descriptive activity names to name the activities in the data set. (step 3) 
total_mergedset <- merge(subset_mean_std, activity_labels, by='activity_id', all.x=TRUE);
total_mergedset$activity_id <- activity_labels[,2][match(total_mergedset$activity_id, activity_labels[,1])] 

# Appropriately labels the data set with descriptive variable names. (step 4)
# This was already done above, under "Add column names to the data"
 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (step 5)
# Averageing each variable for each activity and each subject and save this is tidy_data
tidy_data <- aggregate(. ~subject_id + activity_id, total_mergedset, mean)
# Writing tidy_data into a file "tidydata.txt"
write.table(tidy_data, file = "./tidydata.txt", row.names = FALSE, col.names = TRUE) 


## Set working directory.
setwd("D:/Coursera/GettingandCleaningData/data/UCI HAR Dataset")

## Read data from train dataset.
train_data <- read.table("train/X_train.txt", header = FALSE);
train_subject <- read.table("train/subject_train.txt", header = FALSE);
train_activity <- read.table("train/y_train.txt", header = FALSE);

## Read data from test dataset.
test_data <- read.table("test/X_test.txt", header = FALSE);
test_subject <- read.table("test/subject_test.txt", header = FALSE);
test_activity <- read.table("test/y_test.txt", header = FALSE);

## Merges the training and the test sets to create one data set.
data <- rbind(train_data, test_data);
subject <- rbind(train_subject, test_subject);
activity <- rbind(train_activity, test_activity);

## Appropriately labels the data set with descriptive variable names.
features <- read.table("features.txt", header = FALSE);
colnames(activity) <- c("activity");
colnames(subject) <- c("subject");
colnames(data) <- features[,2];

## Uses descriptive activity names to name the activities in the data set.
activity_labels <- read.table("activity_labels.txt", header = FALSE);
activity_labels <- activity_labels[,2];
activity$activity <- activity_labels[activity$activity];

## Extracts only the measurements on the mean and standard deviation 
## for each measurement. 
std_data <- data[, grep("std()", colnames(data), value = TRUE)];
mean_data <- data[, grep("mean()", colnames(data), value = TRUE)];
data <- cbind(subject, activity, std_data, mean_data);

## Creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
by1 <- factor(data$subject);
by2 <- factor(data$activity);
data1 <- aggregate(x = data[,3:81], by = list(by1, by2), FUN = "mean");
colnames(data1)[1] <- "subject";
colnames(data1)[2] <- "activity";

write.table(data1, file = "getdata-008_CourseProject_dataset.txt", row.name = FALSE, quote = FALSE);

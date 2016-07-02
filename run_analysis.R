run_analysis <- function(){
  load_data()
  combine_data()
  subset_data()
  output_data()
}

load_data <- function(){
  #load training and test subject data
  training_subject <<- read.table(file = "./UCI HAR Dataset/train/subject_train.txt")
  test_subject <<- read.table(file = "./UCI HAR Dataset/test/subject_test.txt")
  
  #load features to use as column names for the training and test sets
  features <<- read.table(file = "./UCI HAR Dataset/features.txt", sep=" ")
  
  #load activity names
  activity_labels <<- read.table(file = "./UCI HAR Dataset/activity_labels.txt", sep=" ")
  
  #load training and test sets
  training_set <<- read.table(file = "./UCI HAR Dataset/train/X_train.txt")
  test_set <<- read.table(file = "./UCI HAR Dataset/test/X_test.txt")
  
  #load training and test activity labels
  training_activity_labels <<- read.table(file = "./UCI HAR Dataset/train/y_train.txt")
  test_activity_labels <<- read.table(file = "./UCI HAR Dataset/test/y_test.txt")
}

#Merges the training and the test sets to create one data set.
combine_data <- function(){
  #Appropriately labels the data set with descriptive variable names.
  colnames(training_set) <<- features[,2]
  colnames(test_set) <<- features[,2]
  
  #Uses descriptive activity names to name the activities in the data set
  training_activity_labels <<- merge(training_activity_labels, activity_labels)
  test_activity_labels <<- merge(test_activity_labels, activity_labels)
  
  #add a new column to the training and test sets called subject to denote the subject of the data
  training_set <<- cbind(subject = training_subject[,1], training_set)
  test_set <<- cbind(subject = test_subject[,1], test_set)
  
  #add a new column to the training and test sets called activity to denote the activity of the data
  training_set <<- cbind(activity = training_activity_labels[,2], training_set)
  test_set <<- cbind(activity = test_activity_labels[,2], test_set)
  
  #combine the data
  combined_sets <<- rbind(training_set, test_set)
}


subset_data <- function(){
  #find column names with mean or std
  mean_and_standard_deviation <<- c(grep("mean()",names(combined_sets),fixed = TRUE),grep("std()",names(combined_sets),fixed = TRUE))
  
  #sort the resulting vector to keep the columns in order
  mean_and_standard_deviation <<- sort(mean_and_standard_deviation)
  
  #Extracts only the measurements on the mean and standard deviation for each measurement.
  filtered_sets <<- subset(combined_sets, select = mean_and_standard_deviation)
  
  #Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  averages <<- aggregate(combined_sets[,mean_and_standard_deviation], by = list(Activity = combined_sets$activity, Subject = combined_sets$subject), mean)
}

output_data <- function(){
  write.table(averages, file = "./tidy_averages_by_activity_then_subject.txt", row.names = FALSE)
}


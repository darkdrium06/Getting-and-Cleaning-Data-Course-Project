# Getting-and-Cleaning-Data-Course-Project

### Variables

	* Activity - The name of one of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist
	* Subject - the subject who performed the activity for each window sample. Its range is from 1 to 30.

The average of each mean and std variable from the original data set for each activity and each subject (A full description is available at [the site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained). 

	*tBodyAcc-mean()-X
	*tBodyAcc-mean()-Y
	*tBodyAcc-mean()-Z
	*tBodyAcc-std()-X
	*tBodyAcc-std()-Y
	*tBodyAcc-std()-Z
	*tGravityAcc-mean()-X
	*tGravityAcc-mean()-Y
	*tGravityAcc-mean()-Z
	*tGravityAcc-std()-X
	*tGravityAcc-std()-Y
	*tGravityAcc-std()-Z
	*tBodyAccJerk-mean()-X
	*tBodyAccJerk-mean()-Y
	*tBodyAccJerk-mean()-Z
	*tBodyAccJerk-std()-X
	*tBodyAccJerk-std()-Y
	*tBodyAccJerk-std()-Z
	*tBodyGyro-mean()-X
	*tBodyGyro-mean()-Y
	*tBodyGyro-mean()-Z
	*tBodyGyro-std()-X
	*tBodyGyro-std()-Y
	*tBodyGyro-std()-Z
	*tBodyGyroJerk-mean()-X
	*tBodyGyroJerk-mean()-Y
	*tBodyGyroJerk-mean()-Z
	*tBodyGyroJerk-std()-X
	*tBodyGyroJerk-std()-Y
	*tBodyGyroJerk-std()-Z
	*tBodyAccMag-mean()
	*tBodyAccMag-std()
	*tGravityAccMag-mean()
	*tGravityAccMag-std()
	*tBodyAccJerkMag-mean()
	*tBodyAccJerkMag-std()
	*tBodyGyroMag-mean()
	*tBodyGyroMag-std()
	*tBodyGyroJerkMag-mean()
	*tBodyGyroJerkMag-std()
	*fBodyAcc-mean()-X
	*fBodyAcc-mean()-Y
	*fBodyAcc-mean()-Z
	*fBodyAcc-std()-X
	*fBodyAcc-std()-Y
	*fBodyAcc-std()-Z
	*fBodyAccJerk-mean()-X
	*fBodyAccJerk-mean()-Y
	*fBodyAccJerk-mean()-Z
	*fBodyAccJerk-std()-X
	*fBodyAccJerk-std()-Y
	*fBodyAccJerk-std()-Z
	*fBodyGyro-mean()-X
	*fBodyGyro-mean()-Y
	*fBodyGyro-mean()-Z
	*fBodyGyro-std()-X
	*fBodyGyro-std()-Y
	*fBodyGyro-std()-Z
	*fBodyAccMag-mean()
	*fBodyAccMag-std()
	*fBodyBodyAccJerkMag-mean()
	*fBodyBodyAccJerkMag-std()
	*fBodyBodyGyroMag-mean()
	*fBodyBodyGyroMag-std()
	*fBodyBodyGyroJerkMag-mean()
	*fBodyBodyGyroJerkMag-std()

### Data
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

### Transformations
	All transformations of the original data set are done in functions in [run_analysis.R](run_analysis.R).
	*combine_data
		*Label the training and test sets using the features.txt file
		*Label the training and test activities using the activity_labels.txt file
		*Add new columns for the subject and activity
		*Combine the training and test sets using rbind
	*subset_data
		*Extract the measurements of the mean and standard deviation for each measurement
		*Average the extracted measurements by activity and subject


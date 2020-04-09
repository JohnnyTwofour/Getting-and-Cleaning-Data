Feature Selection - Alterations
===============================

See the features_info.txt document for a list of all the data that is provided with the model.

The original set of data was truncated to only include variables containing the word "mean" | "std".

Additional alterations were to average the truncated dataset over the subject and the activity performed.

These new variables were label with "Avg_" to indicate the data processing performed.

Column 1-2 are as follows (where x = column number & y = column name):

x	y
"1"	"Subject"
"2"	"Activity"

Where "Subject" refers to the number given to the participant (1-30) in the data aquisition process &
"Activity" refers to the activity being performed by the paticipant. Activities are:

"WALKING"

"WALKING UPSTAIRS"

"WALKING DOWNSTAIRS"

"SITTING
"
"STANDING
"
"LAYING"


Refer to the Feature Selection in the provided data for a decription of the variables.
The new variable names in columns 3-81 are:

x	y
"3"	"Avg_tBodyAcc-mean()-X"
"4"	"Avg_tBodyAcc-mean()-Y"
"5"	"Avg_tBodyAcc-mean()-Z"
"6"	"Avg_tGravityAcc-mean()-X"
"7"	"Avg_tGravityAcc-mean()-Y"
"8"	"Avg_tGravityAcc-mean()-Z"
"9"	"Avg_tBodyAccJerk-mean()-X"
"10"	"Avg_tBodyAccJerk-mean()-Y"
"11"	"Avg_tBodyAccJerk-mean()-Z"
"12"	"Avg_tBodyGyro-mean()-X"
"13"	"Avg_tBodyGyro-mean()-Y"
"14"	"Avg_tBodyGyro-mean()-Z"
"15"	"Avg_tBodyGyroJerk-mean()-X"
"16"	"Avg_tBodyGyroJerk-mean()-Y"
"17"	"Avg_tBodyGyroJerk-mean()-Z"
"18"	"Avg_tBodyAccMag-mean()"
"19"	"Avg_tGravityAccMag-mean()"
"20"	"Avg_tBodyAccJerkMag-mean()"
"21"	"Avg_tBodyGyroMag-mean()"
"22"	"Avg_tBodyGyroJerkMag-mean()"
"23"	"Avg_fBodyAcc-mean()-X"
"24"	"Avg_fBodyAcc-mean()-Y"
"25"	"Avg_fBodyAcc-mean()-Z"
"26"	"Avg_fBodyAcc-meanFreq()-X"
"27"	"Avg_fBodyAcc-meanFreq()-Y"
"28"	"Avg_fBodyAcc-meanFreq()-Z"
"29"	"Avg_fBodyAccJerk-mean()-X"
"30"	"Avg_fBodyAccJerk-mean()-Y"
"31"	"Avg_fBodyAccJerk-mean()-Z"
"32"	"Avg_fBodyAccJerk-meanFreq()-X"
"33"	"Avg_fBodyAccJerk-meanFreq()-Y"
"34"	"Avg_fBodyAccJerk-meanFreq()-Z"
"35"	"Avg_fBodyGyro-mean()-X"
"36"	"Avg_fBodyGyro-mean()-Y"
"37"	"Avg_fBodyGyro-mean()-Z"
"38"	"Avg_fBodyGyro-meanFreq()-X"
"39"	"Avg_fBodyGyro-meanFreq()-Y"
"40"	"Avg_fBodyGyro-meanFreq()-Z"
"41"	"Avg_fBodyAccMag-mean()"
"42"	"Avg_fBodyAccMag-meanFreq()"
"43"	"Avg_fBodyBodyAccJerkMag-mean()"
"44"	"Avg_fBodyBodyAccJerkMag-meanFreq()"
"45"	"Avg_fBodyBodyGyroMag-mean()"
"46"	"Avg_fBodyBodyGyroMag-meanFreq()"
"47"	"Avg_fBodyBodyGyroJerkMag-mean()"
"48"	"Avg_fBodyBodyGyroJerkMag-meanFreq()"
"49"	"Avg_tBodyAcc-std()-X"
"50"	"Avg_tBodyAcc-std()-Y"
"51"	"Avg_tBodyAcc-std()-Z"
"52"	"Avg_tGravityAcc-std()-X"
"53"	"Avg_tGravityAcc-std()-Y"
"54"	"Avg_tGravityAcc-std()-Z"
"55"	"Avg_tBodyAccJerk-std()-X"
"56"	"Avg_tBodyAccJerk-std()-Y"
"57"	"Avg_tBodyAccJerk-std()-Z"
"58"	"Avg_tBodyGyro-std()-X"
"59"	"Avg_tBodyGyro-std()-Y"
"60"	"Avg_tBodyGyro-std()-Z"
"61"	"Avg_tBodyGyroJerk-std()-X"
"62"	"Avg_tBodyGyroJerk-std()-Y"
"63"	"Avg_tBodyGyroJerk-std()-Z"
"64"	"Avg_tBodyAccMag-std()"
"65"	"Avg_tGravityAccMag-std()"
"66"	"Avg_tBodyAccJerkMag-std()"
"67"	"Avg_tBodyGyroMag-std()"
"68"	"Avg_tBodyGyroJerkMag-std()"
"69"	"Avg_fBodyAcc-std()-X"
"70"	"Avg_fBodyAcc-std()-Y"
"71"	"Avg_fBodyAcc-std()-Z"
"72"	"Avg_fBodyAccJerk-std()-X"
"73"	"Avg_fBodyAccJerk-std()-Y"
"74"	"Avg_fBodyAccJerk-std()-Z"
"75"	"Avg_fBodyGyro-std()-X"
"76"	"Avg_fBodyGyro-std()-Y"
"77"	"Avg_fBodyGyro-std()-Z"
"78"	"Avg_fBodyAccMag-std()"
"79"	"Avg_fBodyBodyAccJerkMag-std()"
"80"	"Avg_fBodyBodyGyroMag-std()"
"81"	"Avg_fBodyBodyGyroJerkMag-std()"

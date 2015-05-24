
#Codebook for Getting and Cleaning Data Course Project

##Data Source

The data used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


For greater deatil on the method by which the data was collected please see the below statement which comes from the README.md of the original data set. 


"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)." 


##Feature Selection

Based on the requirments of this project, this analysis filters out all columns that do not represent a mean or standard deviation  measurment. Below you will find a list of all the variables included in the final dataset.  


The first two columns are used to identify the subject of the observation and what activity they performed.

<ul>
<li>Subject: Numeric code to identify individual subjects across observations and activites</li>
<li>Activity: Factor description indicating what activity was being performed</li>
</ul>


The following 86 variables represent the mean  of normalized values bounded within [-1,1] for each subject and for each activity for different measurements for 3-axial linear acceleration and 3-axial angular velocity caputured with a smartphone.   


- "tBodyAcc.mean...X": Numeric
- "tBodyAcc.mean...Y": Numeric
- "tBodyAcc.mean...Z": Numeric
- "tGravityAcc.mean...X": Numeric
- "tGravityAcc.mean...Y": Numeric
- "tGravityAcc.mean...Z": Numeric
- "tBodyAccJerk.mean...X": Numeric
- "tBodyAccJerk.mean...Y": Numeric
- "tBodyAccJerk.mean...Z": Numeric
- "tBodyGyro.mean...X": Numeric
- "tBodyGyro.mean...Y": Numeric
- "tBodyGyro.mean...Z": Numeric
- "tBodyGyroJerk.mean...X": Numeric
- "tBodyGyroJerk.mean...Y": Numeric
- "tBodyGyroJerk.mean...Z": Numeric
- "tBodyAccMag.mean..": Numeric
- "tGravityAccMag.mean..": Numeric
- "tBodyAccJerkMag.mean..": Numeric
- "tBodyGyroMag.mean..": Numeric
- "tBodyGyroJerkMag.mean..": Numeric
- "fBodyAcc.mean...X": Numeric
- "fBodyAcc.mean...Y": Numeric
- "fBodyAcc.mean...Z": Numeric
- "fBodyAcc.meanFreq...X": Numeric
- "fBodyAcc.meanFreq...Y": Numeric
- "fBodyAcc.meanFreq...Z": Numeric
- "fBodyAccJerk.mean...X": Numeric
- "fBodyAccJerk.mean...Y": Numeric
- "fBodyAccJerk.mean...Z": Numeric
- "fBodyAccJerk.meanFreq...X": Numeric
- "fBodyAccJerk.meanFreq...Y": Numeric
- "fBodyAccJerk.meanFreq...Z": Numeric
- "fBodyGyro.mean...X": Numeric
- "fBodyGyro.mean...Y": Numeric
- "fBodyGyro.mean...Z": Numeric
- "fBodyGyro.meanFreq...X": Numeric
- "fBodyGyro.meanFreq...Y": Numeric
- "fBodyGyro.meanFreq...Z": Numeric
- "fBodyAccMag.mean..": Numeric
- "fBodyAccMag.meanFreq..": Numeric
- "fBodyBodyAccJerkMag.mean..": Numeric
- "fBodyBodyAccJerkMag.meanFreq..": Numeric
- "fBodyBodyGyroMag.mean..": Numeric
- "fBodyBodyGyroMag.meanFreq..": Numeric
- "fBodyBodyGyroJerkMag.mean..": Numeric
- "fBodyBodyGyroJerkMag.meanFreq..": Numeric
- "angle.tBodyAccMean.gravity.": Numeric
- "angle.tBodyAccJerkMean..gravityMean.": Numeric
- "angle.tBodyGyroMean.gravityMean.": Numeric
- "angle.tBodyGyroJerkMean.gravityMean.": Numeric
- "angle.X.gravityMean.": Numeric
- "angle.Y.gravityMean.": Numeric
- "angle.Z.gravityMean.": Numeric
- "tBodyAcc.std...X": Numeric
- "tBodyAcc.std...Y": Numeric
- "tBodyAcc.std...Z": Numeric
- "tGravityAcc.std...X": Numeric
- "tGravityAcc.std...Y": Numeric
- "tGravityAcc.std...Z": Numeric
- "tBodyAccJerk.std...X": Numeric
- "tBodyAccJerk.std...Y": Numeric
- "tBodyAccJerk.std...Z": Numeric
- "tBodyGyro.std...X": Numeric
- "tBodyGyro.std...Y": Numeric
- "tBodyGyro.std...Z": Numeric
- "tBodyGyroJerk.std...X": Numeric
- "tBodyGyroJerk.std...Y": Numeric
- "tBodyGyroJerk.std...Z": Numeric
- "tBodyAccMag.std..": Numeric
- "tGravityAccMag.std..": Numeric
- "tBodyAccJerkMag.std..": Numeric
- "tBodyGyroMag.std..": Numeric
- "tBodyGyroJerkMag.std..": Numeric
- "fBodyAcc.std...X": Numeric
- "fBodyAcc.std...Y": Numeric
- "fBodyAcc.std...Z": Numeric
- "fBodyAccJerk.std...X": Numeric
- "fBodyAccJerk.std...Y": Numeric
- "fBodyAccJerk.std...Z": Numeric
- "fBodyGyro.std...X": Numeric
- "fBodyGyro.std...Y": Numeric
- "fBodyGyro.std...Z": Numeric
- "fBodyAccMag.std..": Numeric
- "fBodyBodyAccJerkMag.std..": Numeric
- "fBodyBodyGyroMag.std..": Numeric
- "fBodyBodyGyroJerkMag.std..": Numeric

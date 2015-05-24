# Getting and Cleaning Data Project

##Introduction

This repository contains the rscript, run_analysis.R, a codebook outlining the variables in the final output, and this readme file. 

##Raw Data

The data used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data used for this analysis comes from the following 8 files:


- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Links the individual subject between multiple observations in the test set

- 'train/subject_train.txt': Links the individual subject between multiple observations in the training set


##RScript - run_analysis()

The R script included in this repo performs the following set of transformations on the above listed files in order to generate a single tidy dataset that includes only the average of each variable for each activity and each subject. This script also filters the merged dataset into only those variables that conatin mean or standard deviation measurments.

<ol>
<li> Load the necessary packages into R: 'dplyr' and 'Reshape2'</li>
</br>
<li> Read the above 8 raw data files into R & merge them all into a single dataframe</li>
</br>
<li> Use the "features.txt" file to rename columns with appropriate descriptive variable names</li>
</br>
<li>Select only the columns with measurments on the mean and standard deviation for each measurement, and remove everything else</li>
</br>
<li>Relabel the values in the "Activity" column from their numeric code to a descriptive activity name using the "activity_labels.txt"
</li>
</br>
<li>Create a new independent tidy dataset that contains the average of each variable for each activity and for each subject</li>
</br>
<li>Write the file to "GetandCleanData.txt" within the current directory</li>
</ol>
</br>
Note: run_analysis() assumes that the above files are contained within the working directory and divided into a "test" and a "train" folder. 



run_analysis <- function (){
  
  #load the necessary packages into R
  
  library(dplyr)
  library(reshape2)

  #read the data into R & merge into a single dataframe.
 
  S_test<-read.table("test/subject_test.txt")
  X_test<-read.table("test/X_test.txt")
  y_test<-read.table("test/y_test.txt")
  TEST<-cbind(S_test,X_test, y_test)
  
  S_train<-read.table("train/subject_train.txt")
  X_train<-read.table("train/X_train.txt")
  y_train<-read.table("train/y_train.txt")
  TRAIN<-cbind(S_train,X_train, y_train)
  
  DATA<-rbind(TEST,TRAIN)
  
  
  #rename columns
  
  features<-read.table("features.txt")
  sub<-data.frame(1,"Subject")
  act<-data.frame(1,"Activity")
  colnames(sub)<-c("V1", "V2")
  colnames(act)<-c("V1", "V2")
  features<-rbind(sub,features,act)
  activity<-read.table("activity_labels.txt")
  
  colnames(DATA)<-features[,2]
  
  

  #select only the columns with measurments on the mean 
  #and standard deviation for each measurement
  
  DATA<-data.frame(DATA, check.names = TRUE)
  DATA <- select(DATA, contains("Subject"),contains("Activity"),contains("mean") ,contains("std"))

  #rename the activities in the "Activity" column 
  
  for (i in 1:length(DATA[,2])){
    if (DATA[i,2] == 1)
      DATA[i,2] = "WALKING"
    if (DATA[i,2] == 2)
      DATA[i,2] = "WALKING_UPSTAIRS"
    if (DATA[i,2] == 3)
      DATA[i,2] = "WALKING_DOWNSTAIRS"
    if (DATA[i,2] == 4)
      DATA[i,2] = "SITTING"
    if (DATA[i,2] == 5)
      DATA[i,2] = "STANDING"
    if (DATA[i,2] == 6)
      DATA[i,2] = "LAYING"
  }
  
 
#create an independant dataset to convert 
#into a Tidy Dataset 

TidyDATA<-DATA



colLabels<-colnames(TidyDATA)
colLabels<-colLabels[3:88]

#convert new dataset into a tidy dataset with the average of
#each variable for each activity and each subject

TidyDATA<-as.vector(TidyDATA)
TidyDATA<-group_by(TidyDATA, Subject, Activity)
TidyDATA<-summarise_each(TidyDATA, funs(mean))


#write new dataset to a txt file
  
write.table(TidyDATA, "GetandCleanData.txt", row.names = FALSE)
  
}
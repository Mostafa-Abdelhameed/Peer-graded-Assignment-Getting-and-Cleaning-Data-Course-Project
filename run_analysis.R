#Cleaning and getting data, course project

#Required Libraries
library(plyr)
library(knitr)

####Reading the important data##########

#subject
SubjectTrain <- read.table(file.path(path, "train", "subject_train.txt"),header = FALSE)
SubjectTest  <- read.table(file.path(path, "test" , "subject_test.txt"),header = FALSE)

#features
FeaturesTest  <- read.table(file.path(path, "test" , "X_test.txt" ),header = FALSE)
FeaturesTrain <- read.table(file.path(path, "train", "X_train.txt"),header = FALSE)

#activity
ActivityTest  <- read.table(file.path(path, "test" , "Y_test.txt" ),header = FALSE)
ActivityTrain <- read.table(file.path(path, "train", "Y_train.txt"),header = FALSE)


##### 1- Merges the training and the test sets to create one data set.####

#combie train and data aets for the same variable
Subject<- rbind(SubjectTrain,SubjectTest)
Features<- rbind(FeaturesTest,FeaturesTrain )
Activity<- rbind(ActivityTest,ActivityTrain)

#Rename_Measurements
names(Subject)<-c("subject")
names(Features)<- FeaturesNames$V2
names(Activity)<- c("activity")
FeaturesNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)

#All data
comb <- cbind(Subject, Features)
All_Data <- cbind(Activity,comb)

##### 2- Extracts only the measurements on the mean and standard deviation for each measurement###

subFeaturesNames<-FeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", FeaturesNames$V2)]
selectedNames<-c("activity","subject",as.character(subFeaturesNames) )
All_data_mean_std<-subset(All_Data,select=selectedNames)

#####3- Uses descriptive activity names to name the activities in the data set
for(i in 1:nrow (All_data_mean_std))
 
       {
              if(All_data_mean_std[i,]$activity==1)
         All_data_mean_std[i,]$activity="WALKING"   
         
         if(All_data_mean_std[i,]$activity==2)
                 All_data_mean_std[i,]$activity="WALKING_UPSTAIRS"
         
         if(All_data_mean_std[i,]$activity==3)
                 All_data_mean_std[i,]$activity="WALKING_DOWNSTAIRS"
         
         if(All_data_mean_std[i,]$activity==4)
                 All_data_mean_std[i,]$activity="SITTING" 
         
         if(All_data_mean_std[i,]$activity==5)
                 All_data_mean_std[i,]$activity="STANDING"
        
         if(All_data_mean_std[i,]$activity==6)
                 All_data_mean_std[i,]$activity="LAYING" 
         }
        
####### 4-  Appropriately labels the data set with descriptive variable names####

names(All_data_mean_std)<-gsub("^t", "time", names(All_data_mean_std))
names(All_data_mean_std)<-gsub("^f", "frequency", names(All_data_mean_std))
names(All_data_mean_std)<-gsub("Acc", "Accelerometer", names(All_data_mean_std))
names(All_data_mean_std)<-gsub("Gyro", "Gyroscope", names(All_data_mean_std))
names(All_data_mean_std)<-gsub("Mag", "Magnitude", names(All_data_mean_std))

######## 5- From the data set in step 4, creates a second, independent tidy data set with
#the average of each variable for each activity and each subject.

second_set<-aggregate(. ~subject + activity, All_data_mean_std, mean)
write.table(second_set, file = "tidydata.txt",row.name=FALSE)





## Getting and Cleaning Data course project

In this project we are analyze data for a wearable computing project in which:

Data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone.

We Try to analyze this data to prepare a tidy data that can be used for later analysis.

in this repo "Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project" ypu will find the following files

* run_analysis.R, which contains all R commands to perform the analysis as required in the instructions of the project. 
* tidydata.txt, which contains the output data that is generated after analysis.
* CodeBook.md, which indicates all the variables and summaries calculated, along with units, and any other relevant information.
* README.md, which describes breifly the problem and the analysis.

## Analysis Steps
1. Reading the important data
   * Subject
   * Features
   * Activity

2. Merges the training and the test sets to create one data set
   * combie train and data aets for the same variable
   * Rename_Measurements
   
3.  Extracts only the measurements on the mean and standard deviation for each measuremen  

4.  Uses descriptive activity names to name the activities in the data set

5. Appropriately labels the data set with descriptive variable names

6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Used Packages

* knitr
* library(plyr)




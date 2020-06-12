#run_analysis.R

#get url

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl,destfile = "./rawdata.zip")

#get some info from readme.txt or url for original website
##get train data

x_train <- read.table("./rawdata/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./rawdata/UCI HAR Dataset/train/y_train.txt")
sub_train <- read.table("./rawdata/UCI HAR Dataset/train/subject_train.txt")


## get test data

x_test <- read.table("./rawdata/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./rawdata/UCI HAR Dataset/test/y_test.txt")
sub_test <- read.table("./rawdata/UCI HAR Dataset/test/subject_test.txt")


##reading features and activity_lables

features <- read.table("./rawdata/UCI HAR Dataset/features.txt")
activity <- read.table("./rawdata/UCI HAR Dataset/activity_labels.txt")

## 1 . merge training and test set to create one data set

x_data <- rbind(x_train,x_test)
y_data <- rbind(y_train,y_test)
sub_data <- rbind(sub_train,sub_test)
dataframe <- cbind(x_data,y_data,sub_data)
 ##lets give these columns some meaningfull names

colnames(dataframe) <- c(features[,2],"activity","subidentity")




## 2 . Extracts only the measurements on the mean and standard deviation for each measurement.
## we will keep column with string mean or std plus activity and sub columns

usefulcol <- grep("activity|subidentity|mean|std",colnames(dataframe))
dataframe <- dataframe[ ,usefulcol]



## 3 . Uses descriptive activity names to name the activities in the data set
#we will use the activity dataset from the folder we downloaded which has all 6 activity names in it.

dataframe$activity <- factor(dataframe$activity , levels = activity[,1],labels = activity[,2])


## 4 . Appropriately labels the data set with descriptive variable names.
## we will remove all unwanted characters like (),-,/etc from dataset, to kae it
##more readable.
##first take all colnames in separate dataset.

datacolname <- colnames(dataframe)
datacolname <- gsub("[-()]","",datacolname)
datacolname <- gsub("Mag","Magnitude",datacolname)
datacolname <- gsub("Freq","Frequency",datacolname)
datacolname <- gsub("Acc","accelerometer",datacolname)
datacolname <- gsub("Gyro","gyroscope",datacolname)

##in some columns body is typed two times
datacolname <- gsub("BodyBody","body",datacolname)

## now we see some are in upper and some are in lower
datacolname <- tolower(datacolname)

## now finally replace the columnnames of original dataset with elaborative one
colnames(dataframe) <- datacolname


## 5. From the data set in step 4, creates a second, independent tidy data set
##with the average of each variable for each activity and each subject.

library(reshape2)
melteddf <- melt(dataframe,id = c("subidentity","activity"))
tidydataset <- dcast(melteddf,subidentity+activity~variable ,mean)
 ## now we will do the final operation and create a dataset named tidy datset.

write.table(tidydataset,"./tidydataset.txt",row.names = FALSE,quote = FALSE)








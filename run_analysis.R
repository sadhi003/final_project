#  Project For Getting and Cleaning Data

# Shankar Adhikari

# 04/20/2015


library(downloader)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download(url, dest="Dataset.zip", mode="wb") 

unzip ("dataset.zip", exdir = "./")

setwd("/Users/shankar/R_programming/Verified_CourseWork/UCI HAR Dataset/")



xDataTrain <- read.table("train/X_train.txt",header=FALSE)
xDataTest  <- read.table("test/X_test.txt",header=FALSE)
yDataTrain <- read.table("train/Y_train.txt",header=FALSE)
yDataTest  <- read.table("test/Y_test.txt",header=FALSE)
sDataTrain <- read.table("train/subject_train.txt",header=FALSE)
sDataTest  <- read.table("test/subject_test.txt",header=FALSE)


features <- read.table("features.txt",header=FALSE)
names(xDataTrain) <- features[,2]
names(xDataTest)  <- features[,2]
names(yDataTrain) <- "Class_Label"
names(yDataTest)  <- "Class_Label"
names(sDataTest)  <- "SubjectID"
names(sDataTrain) <- "SubjectID"


# Merging train and test data set

xDataCombine <- rbind(xDataTrain, xDataTest)
yDataCombine <- rbind(yDataTrain, yDataTest)
sDataCombine <- rbind(sDataTrain, sDataTest)

# combining whole data set

data <- cbind(xDataCombine, yDataCombine, sDataCombine)

#write.table(data, "data.txt")

selectCol <- grep("mean|std|Class|Subject",ignore.case = TRUE, names(data))
data <- data[,selectCol]

activities <- read.table("activity_labels.txt")
activities[,2] = gsub("_", "", tolower(as.character(activities[,2])))
names(activities) <- c("Class_Label", "Class_Name")
data <- merge(x=data, y=activities, by.x="Class_Label", by.y="Class_Label" )

names(data) <- gsub(pattern="[()]", replacement="", names(data))
names(data) <- gsub(pattern="[-]", replacement="_", names(data))

data <- data[,!(names(data) %in% c("Class_Label"))]
library(reshape2)
meltdataset <- melt(data=data, id=c("SubjectID", "Class_Name"))











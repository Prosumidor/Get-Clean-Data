## getting data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile="./dataexpl.zip", method = "curl")
unzip("dataexpl.zip")

## load libraries
library(dplyr)
library(tidyr)

## loading elements
activity_lab <- select(read.table("./UCI HAR Dataset/activity_labels.txt",
                           sep="", 
                           col.names=c("nº", "name")),
                       name)
features <- select(read.table("./UCI HAR Dataset/features.txt", 
                       sep="", 
                       col.names=c("n", "var")),
                   var)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names=features$var)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
body_acc_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
body_acc_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
body_acc_z_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
body_gyro_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_z_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
total_acc_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
total_acc_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
total_acc_z_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names=features$var)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
body_acc_x_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
body_acc_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
body_acc_z_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
body_gyro_x_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_z_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
total_acc_x_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
total_acc_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
total_acc_z_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")

## building data frames
test <- bind_cols(subject_test,
                  body_acc_x_test, 
                  body_acc_y_test, 
                  body_acc_z_test, 
                  body_gyro_x_test, 
                  body_gyro_y_test, 
                  body_gyro_z_test,
                  total_acc_x_test,
                  total_acc_y_test, 
                  total_acc_z_test, 
                  x_test,
                  y_test)

## data <- tbl_df(data_merge)
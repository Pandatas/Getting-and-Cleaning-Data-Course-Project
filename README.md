# Getting and Cleaning Data Course Project

## Introduction
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The data used for this project can be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Included files
This repo includes the following files:

1. README.md
2. CodeBook.md
3. run_analysis.R (R script as described below)
4. tidydata.txt (resulting file "tidydata.txt" from run_analysis.R)

## Description run_analysis.R
An R script called run_analysis.R was prepared that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each  subject.
# Codebook Getting and Cleaning Data Course Project

## Data set
This code book describes the variables, the data, and any work that has been performed to clean up the data from

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This dataset contains the following files:

1. README.txt (readme file)
2. features_info.txt (codebook)
3. features.txt (column headers of X_train.txt and X_test.txt)
4. activity_labels.txt (links activity_id with activity_type)
5. y_train.txt (activity_id training set)
6. X_train.txt (data values training set)
7. subject_train.txt (subject_id training set)
8. y_test.txt (activity_id test set)
9. X_test.txt (data values test set)
10. subject_test.txt (subject_id test set)

## Data manipulation
With an R-script called run_analysis.R, following data manipulations were performed:
1. The training and the test sets were merged to create one data set.
2. Data set was labeled with appropriate labels with descriptive variable names.2. 
3. Only the measurements on the mean and standard deviation for each measurement were extracted.
4. Descriptive activity names were used to name the activities in the data set
5. From the data set in step 4, a second, independent tidy data set was created with the average of each variable for each activity and each  subject.

## Feature Selection 
The features from the original dataset (refer to features_info.txt in the zip-file above) were selected on mean and std
and features "activity_id and "subject_id" were added resulting in following features:

1. "subject_id" 
2. "activity_id"
3. "tBodyAcc-mean()-X"
4. "tBodyAcc-mean()-Y"              
5. "tBodyAcc-mean()-Z"
6. "tBodyAcc-std()-X"
7. "tBodyAcc-std()-Y" 
8. "tBodyAcc-std()-Z" 
9. "tGravityAcc-mean()-X"
10. "tGravityAcc-mean()-Y"
11. "tGravityAcc-mean()-Z"
12. "tGravityAcc-std()-X"            
13. "tGravityAcc-std()-Y"
14. "tGravityAcc-std()-Z"
15. "tBodyAccJerk-mean()-X"
16. "tBodyAccJerk-mean()-Y"          
17. "tBodyAccJerk-mean()-Z"
18. "tBodyAccJerk-std()-X" 
19. "tBodyAccJerk-std()-Y"
20. "tBodyAccJerk-std()-Z"           
21. "tBodyGyro-mean()-X"
22. "tBodyGyro-mean()-Y" 
23. "tBodyGyro-mean()-Z" 
24. "tBodyGyro-std()-X"              
25. "tBodyGyro-std()-Y"  
26. "tBodyGyro-std()-Z"      
27. "tBodyGyroJerk-mean()-X"  
28. "tBodyGyroJerk-mean()-Y"         
29. "tBodyGyroJerk-mean()-Z" 
30. "tBodyGyroJerk-std()-X"  
31. "tBodyGyroJerk-std()-Y"   
32. "tBodyGyroJerk-std()-Z"          
33. "tBodyAccMag-mean()"         
34. "tBodyAccMag-std()"           
35. "tGravityAccMag-mean()"       
36. "tGravityAccMag-std()"           
37. "tBodyAccJerkMag-mean()"      
38. "tBodyAccJerkMag-std()"         
39. "tBodyGyroMag-mean()"          
40. "tBodyGyroMag-std()"             
41. "tBodyGyroJerkMag-mean()"       
42. "tBodyGyroJerkMag-std()"         
43. "fBodyAcc-mean()-X"              
44. "fBodyAcc-mean()-Y"              
45. "fBodyAcc-mean()-Z"             
46. "fBodyAcc-std()-X"              
47. "fBodyAcc-std()-Y"                
48. "fBodyAcc-std()-Z"               
49. "fBodyAcc-meanFreq()-X"     
50. "fBodyAcc-meanFreq()-Y"          
51. "fBodyAcc-meanFreq()-Z"         
52. "fBodyAccJerk-mean()-X"          
53. "fBodyAccJerk-mean()-Y"         
54. "fBodyAccJerk-mean()-Z"           
55. "fBodyAccJerk-std()-X"           
56. "fBodyAccJerk-std()-Y"           
57. "fBodyAccJerk-std()-Z"         
58. "fBodyAccJerk-meanFreq()-X"    
59. "fBodyAccJerk-meanFreq()-Y"     
60. "fBodyAccJerk-meanFreq()-Z"      
61. "fBodyGyro-mean()-X"            
62. "fBodyGyro-mean()-Y"           
63. "fBodyGyro-mean()-Z"             
64. "fBodyGyro-std()-X"              
65. "fBodyGyro-std()-Y"             
66. "fBodyGyro-std()-Z"           
67. "fBodyGyro-meanFreq()-X"    
68. "fBodyGyro-meanFreq()-Y"         
69. "fBodyGyro-meanFreq()-Z"       
70. "fBodyAccMag-mean()"            
71. "fBodyAccMag-std()"             
72. "fBodyAccMag-meanFreq()"         
73. "fBodyBodyAccJerkMag-mean()"     
74. "fBodyBodyAccJerkMag-std()"   
75. "fBodyBodyAccJerkMag-meanFreq()"
76. "fBodyBodyGyroMag-mean()"        
77. "fBodyBodyGyroMag-std()" 
78. "fBodyBodyGyroMag-meanFreq()"
79. "fBodyBodyGyroJerkMag-mean()"
80. "fBodyBodyGyroJerkMag-std()"     
81. "fBodyBodyGyroJerkMag-meanFreq()" 
82. "activity_type"





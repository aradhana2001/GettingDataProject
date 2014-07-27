---
title: "Exercise Data Codebook"
output: html_document
---
# Codebook

## Background
This data is based on the xx data set by yy. More details can be found here.

Original Data source :  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This data is presented in the long format and follows the guidelines for tidy data presented in Hadley Wickham's paper Tiday Data (Hadley WIckham, "Tidy Data" Journal of Statistical Software, http://vita.had.co.nz/papers/tidy-data.pdf).  In addition to being tidy, this gives the user maximum flexibility.  

Please see the readme.md file for more details on the format of the data and to understand how it was created from the original data. That file also explains how to obtain the data in other formats

## Variables

The basic file contains:

###subjectid      
 * numeric
 * ID for the individual subject
 

###activityname    
 * character
 * Name for the activity measured. 
 * Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

###feature         
 * character
 * A complex feature name, used for auditing and transformations as needed.
 * Has punctuation removed and transformed to camelcase for readability.
 * Note 1 below explains the structure of the names. Note 2 below provides a map from the original data and these names.

###value           
* numeric
* The mean value for the measure for this subject-activity-feature.


_If you choose the LongNarrowPlus data you will also get these columns, which are also used to define the feature names in the table._

###domain          
* character
* Represents the type of measurement.
* Values: time, frequency. angle
* frequency indicates that Fast Fourier Transforms have been applied.

###dimension       
* character
* The three possible spatial dimensions: 
* Values: x, y,z 
* NA data is used for dimensionless measuements.

###statistic       
* character
* Indicates what statistic this is a mean of. 
* Values:  mad, max, min, sma, iqr, entropy, arCoeff, correlation, maxInds, meanFreq, skewness, kurtosis, bandsEnergy, "energy, mean, std, angle
* Note: This dataset includes only mean and std, but the others can be obtained using the statswanted object.

###source          
* character
* Source of the measure 
* Values: accelerator or gyroscope

###accelerationsignal     
* character
* Type of signal. 
* Values: acceleration, gravity

###jerk
* character
* Indicates if this was a measure is of jerk. 
* Values: jerk, non jerk
* Jerk means the body linear acceleration and angular velocity were derived in time. Essentially the acceleration of acceleration.

###magnitude
* character
* Indicates if this is based on a measure of "magnitude of thethree-dimensional signals." 
* Values: mag, non mag
* Magnitude of these three-dimensional signals

###frequency
* character
* Indicates if this was a measure of frequency. 
* Values: freq, non freq
                
                
##Note 1

This explains the meaning of the different segments within the feature names.

The feature names are concatendated strings representing the values of that feature of the following variables in the order listed:
Domain, Accelerationsignal, Source, Statistic, Jerk, magnitude, frequency, dimesnion.

Note that not all names are unique. For the current project this was not an isue because all names representing means and standard deviations are unique/

Quoted from the original study code book feature_info.txt file from the original dataset.

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to 
remove noise. 

>Similarly, the acceleration signal was then separated into body and gravity acceleration signals  (tBodyAcc-XYZ and tGravityAcc-XYZ)  using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

>Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

_Note:A set of statistics were calculated for each. See statistic variables_

>Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:


##Note 2
[Old and New Feature Name Map](https://github.com/elinw/GettingDataProject/blob/master/featurenamemap.md)


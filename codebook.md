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
Old and New Feature Name Map

This presents a map of the feature names in the original data set to the feature names in this data set.

Note that not all possible combinations of attributes are present in the data set.

| Original feature name          |    		New feature name                         |
|:-------------------------------|:------------------------------------------------------|
featurename  |  feature
tBodyAcc-mean()-X  |  timeAccelerometerBodyMeanNojerkNomagNofreqX
tBodyAcc-mean()-Y  |  timeAccelerometerBodyMeanNojerkNomagNofreqY
tBodyAcc-mean()-Z  |  timeAccelerometerBodyMeanNojerkNomagNofreqZ
tBodyAcc-std()-X  |  timeAccelerometerBodyStdNojerkNomagNofreqX
tBodyAcc-std()-Y  |  timeAccelerometerBodyStdNojerkNomagNofreqY
tBodyAcc-std()-Z  |  timeAccelerometerBodyStdNojerkNomagNofreqZ
tBodyAcc-mad()-X  |  timeAccelerometerBodyMadNojerkNomagNofreqX
tBodyAcc-mad()-Y  |  timeAccelerometerBodyMadNojerkNomagNofreqY
tBodyAcc-mad()-Z  |  timeAccelerometerBodyMadNojerkNomagNofreqZ
tBodyAcc-max()-X  |  timeAccelerometerBodyMaxNojerkNomagNofreqX
tBodyAcc-max()-Y  |  timeAccelerometerBodyMaxNojerkNomagNofreqY
tBodyAcc-max()-Z  |  timeAccelerometerBodyMaxNojerkNomagNofreqZ
tBodyAcc-min()-X  |  timeAccelerometerBodyMinNojerkNomagNofreqX
tBodyAcc-min()-Y  |  timeAccelerometerBodyMinNojerkNomagNofreqY
tBodyAcc-min()-Z  |  timeAccelerometerBodyMinNojerkNomagNofreqZ
tBodyAcc-sma()  |  timeAccelerometerBodySmaNojerkNomagNofreqNA
tBodyAcc-energy()-X  |  timeAccelerometerBodyEnergyNojerkNomagNofreqX
tBodyAcc-energy()-Y  |  timeAccelerometerBodyEnergyNojerkNomagNofreqY
tBodyAcc-energy()-Z  |  timeAccelerometerBodyEnergyNojerkNomagNofreqZ
tBodyAcc-iqr()-X  |  timeAccelerometerBodyIqrNojerkNomagNofreqX
tBodyAcc-iqr()-Y  |  timeAccelerometerBodyIqrNojerkNomagNofreqY
tBodyAcc-iqr()-Z  |  timeAccelerometerBodyIqrNojerkNomagNofreqZ
tBodyAcc-entropy()-X  |  timeAccelerometerBodyEntropyNojerkNomagNofreqX
tBodyAcc-entropy()-Y  |  timeAccelerometerBodyEntropyNojerkNomagNofreqY
tBodyAcc-entropy()-Z  |  timeAccelerometerBodyEntropyNojerkNomagNofreqZ
tBodyAcc-arCoeff()-X,1  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-X,2  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-X,3  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-X,4  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-Y,1  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-Y,2  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-Y,3  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-Y,4  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-Z,1  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-Z,2  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-Z,3  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-arCoeff()-Z,4  |  timeAccelerometerBodyarCoeffNojerkNomagNofreqNA
tBodyAcc-correlation()-X,Y  |  timeAccelerometerBodyCorrelationNojerkNomagNofreqY
tBodyAcc-correlation()-X,Z  |  timeAccelerometerBodyCorrelationNojerkNomagNofreqZ
tBodyAcc-correlation()-Y,Z  |  timeAccelerometerBodyCorrelationNojerkNomagNofreqZ
tGravityAcc-mean()-X  |  timeAccelerometerGravityMeanNojerkNomagNofreqX
tGravityAcc-mean()-Y  |  timeAccelerometerGravityMeanNojerkNomagNofreqY
tGravityAcc-mean()-Z  |  timeAccelerometerGravityMeanNojerkNomagNofreqZ
tGravityAcc-std()-X  |  timeAccelerometerGravityStdNojerkNomagNofreqX
tGravityAcc-std()-Y  |  timeAccelerometerGravityStdNojerkNomagNofreqY
tGravityAcc-std()-Z  |  timeAccelerometerGravityStdNojerkNomagNofreqZ
tGravityAcc-mad()-X  |  timeAccelerometerGravityMadNojerkNomagNofreqX
tGravityAcc-mad()-Y  |  timeAccelerometerGravityMadNojerkNomagNofreqY
tGravityAcc-mad()-Z  |  timeAccelerometerGravityMadNojerkNomagNofreqZ
tGravityAcc-max()-X  |  timeAccelerometerGravityMaxNojerkNomagNofreqX
tGravityAcc-max()-Y  |  timeAccelerometerGravityMaxNojerkNomagNofreqY
tGravityAcc-max()-Z  |  timeAccelerometerGravityMaxNojerkNomagNofreqZ
tGravityAcc-min()-X  |  timeAccelerometerGravityMinNojerkNomagNofreqX
tGravityAcc-min()-Y  |  timeAccelerometerGravityMinNojerkNomagNofreqY
tGravityAcc-min()-Z  |  timeAccelerometerGravityMinNojerkNomagNofreqZ
tGravityAcc-sma()  |  timeAccelerometerGravitySmaNojerkNomagNofreqNA
tGravityAcc-energy()-X  |  timeAccelerometerGravityEnergyNojerkNomagNofreqX
tGravityAcc-energy()-Y  |  timeAccelerometerGravityEnergyNojerkNomagNofreqY
tGravityAcc-energy()-Z  |  timeAccelerometerGravityEnergyNojerkNomagNofreqZ
tGravityAcc-iqr()-X  |  timeAccelerometerGravityIqrNojerkNomagNofreqX
tGravityAcc-iqr()-Y  |  timeAccelerometerGravityIqrNojerkNomagNofreqY
tGravityAcc-iqr()-Z  |  timeAccelerometerGravityIqrNojerkNomagNofreqZ
tGravityAcc-entropy()-X  |  timeAccelerometerGravityEntropyNojerkNomagNofreqX
tGravityAcc-entropy()-Y  |  timeAccelerometerGravityEntropyNojerkNomagNofreqY
tGravityAcc-entropy()-Z  |  timeAccelerometerGravityEntropyNojerkNomagNofreqZ
tGravityAcc-arCoeff()-X,1  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-X,2  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-X,3  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-X,4  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-Y,1  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-Y,2  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-Y,3  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-Y,4  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-Z,1  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-Z,2  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-Z,3  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-arCoeff()-Z,4  |  timeAccelerometerGravityarCoeffNojerkNomagNofreqNA
tGravityAcc-correlation()-X,Y  |  timeAccelerometerGravityCorrelationNojerkNomagNofreqY
tGravityAcc-correlation()-X,Z  |  timeAccelerometerGravityCorrelationNojerkNomagNofreqZ
tGravityAcc-correlation()-Y,Z  |  timeAccelerometerGravityCorrelationNojerkNomagNofreqZ
tBodyAccJerk-mean()-X  |  timeAccelerometerBodyMeanJerkNomagNofreqX
tBodyAccJerk-mean()-Y  |  timeAccelerometerBodyMeanJerkNomagNofreqY
tBodyAccJerk-mean()-Z  |  timeAccelerometerBodyMeanJerkNomagNofreqZ
tBodyAccJerk-std()-X  |  timeAccelerometerBodyStdJerkNomagNofreqX
tBodyAccJerk-std()-Y  |  timeAccelerometerBodyStdJerkNomagNofreqY
tBodyAccJerk-std()-Z  |  timeAccelerometerBodyStdJerkNomagNofreqZ
tBodyAccJerk-mad()-X  |  timeAccelerometerBodyMadJerkNomagNofreqX
tBodyAccJerk-mad()-Y  |  timeAccelerometerBodyMadJerkNomagNofreqY
tBodyAccJerk-mad()-Z  |  timeAccelerometerBodyMadJerkNomagNofreqZ
tBodyAccJerk-max()-X  |  timeAccelerometerBodyMaxJerkNomagNofreqX
tBodyAccJerk-max()-Y  |  timeAccelerometerBodyMaxJerkNomagNofreqY
tBodyAccJerk-max()-Z  |  timeAccelerometerBodyMaxJerkNomagNofreqZ
tBodyAccJerk-min()-X  |  timeAccelerometerBodyMinJerkNomagNofreqX
tBodyAccJerk-min()-Y  |  timeAccelerometerBodyMinJerkNomagNofreqY
tBodyAccJerk-min()-Z  |  timeAccelerometerBodyMinJerkNomagNofreqZ
tBodyAccJerk-sma()  |  timeAccelerometerBodySmaJerkNomagNofreqNA
tBodyAccJerk-energy()-X  |  timeAccelerometerBodyEnergyJerkNomagNofreqX
tBodyAccJerk-energy()-Y  |  timeAccelerometerBodyEnergyJerkNomagNofreqY
tBodyAccJerk-energy()-Z  |  timeAccelerometerBodyEnergyJerkNomagNofreqZ
tBodyAccJerk-iqr()-X  |  timeAccelerometerBodyIqrJerkNomagNofreqX
tBodyAccJerk-iqr()-Y  |  timeAccelerometerBodyIqrJerkNomagNofreqY
tBodyAccJerk-iqr()-Z  |  timeAccelerometerBodyIqrJerkNomagNofreqZ
tBodyAccJerk-entropy()-X  |  timeAccelerometerBodyEntropyJerkNomagNofreqX
tBodyAccJerk-entropy()-Y  |  timeAccelerometerBodyEntropyJerkNomagNofreqY
tBodyAccJerk-entropy()-Z  |  timeAccelerometerBodyEntropyJerkNomagNofreqZ
tBodyAccJerk-arCoeff()-X,1  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-X,2  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-X,3  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-X,4  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-Y,1  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-Y,2  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-Y,3  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-Y,4  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-Z,1  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-Z,2  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-Z,3  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-arCoeff()-Z,4  |  timeAccelerometerBodyarCoeffJerkNomagNofreqNA
tBodyAccJerk-correlation()-X,Y  |  timeAccelerometerBodyCorrelationJerkNomagNofreqY
tBodyAccJerk-correlation()-X,Z  |  timeAccelerometerBodyCorrelationJerkNomagNofreqZ
tBodyAccJerk-correlation()-Y,Z  |  timeAccelerometerBodyCorrelationJerkNomagNofreqZ
tBodyGyro-mean()-X  |  timeGyroscopeBodyMeanNojerkNomagNofreqX
tBodyGyro-mean()-Y  |  timeGyroscopeBodyMeanNojerkNomagNofreqY
tBodyGyro-mean()-Z  |  timeGyroscopeBodyMeanNojerkNomagNofreqZ
tBodyGyro-std()-X  |  timeGyroscopeBodyStdNojerkNomagNofreqX
tBodyGyro-std()-Y  |  timeGyroscopeBodyStdNojerkNomagNofreqY
tBodyGyro-std()-Z  |  timeGyroscopeBodyStdNojerkNomagNofreqZ
tBodyGyro-mad()-X  |  timeGyroscopeBodyMadNojerkNomagNofreqX
tBodyGyro-mad()-Y  |  timeGyroscopeBodyMadNojerkNomagNofreqY
tBodyGyro-mad()-Z  |  timeGyroscopeBodyMadNojerkNomagNofreqZ
tBodyGyro-max()-X  |  timeGyroscopeBodyMaxNojerkNomagNofreqX
tBodyGyro-max()-Y  |  timeGyroscopeBodyMaxNojerkNomagNofreqY
tBodyGyro-max()-Z  |  timeGyroscopeBodyMaxNojerkNomagNofreqZ
tBodyGyro-min()-X  |  timeGyroscopeBodyMinNojerkNomagNofreqX
tBodyGyro-min()-Y  |  timeGyroscopeBodyMinNojerkNomagNofreqY
tBodyGyro-min()-Z  |  timeGyroscopeBodyMinNojerkNomagNofreqZ
tBodyGyro-sma()  |  timeGyroscopeBodySmaNojerkNomagNofreqNA
tBodyGyro-energy()-X  |  timeGyroscopeBodyEnergyNojerkNomagNofreqX
tBodyGyro-energy()-Y  |  timeGyroscopeBodyEnergyNojerkNomagNofreqY
tBodyGyro-energy()-Z  |  timeGyroscopeBodyEnergyNojerkNomagNofreqZ
tBodyGyro-iqr()-X  |  timeGyroscopeBodyIqrNojerkNomagNofreqX
tBodyGyro-iqr()-Y  |  timeGyroscopeBodyIqrNojerkNomagNofreqY
tBodyGyro-iqr()-Z  |  timeGyroscopeBodyIqrNojerkNomagNofreqZ
tBodyGyro-entropy()-X  |  timeGyroscopeBodyEntropyNojerkNomagNofreqX
tBodyGyro-entropy()-Y  |  timeGyroscopeBodyEntropyNojerkNomagNofreqY
tBodyGyro-entropy()-Z  |  timeGyroscopeBodyEntropyNojerkNomagNofreqZ
tBodyGyro-arCoeff()-X,1  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-X,2  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-X,3  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-X,4  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-Y,1  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-Y,2  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-Y,3  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-Y,4  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-Z,1  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-Z,2  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-Z,3  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-arCoeff()-Z,4  |  timeGyroscopeBodyarCoeffNojerkNomagNofreqNA
tBodyGyro-correlation()-X,Y  |  timeGyroscopeBodyCorrelationNojerkNomagNofreqY
tBodyGyro-correlation()-X,Z  |  timeGyroscopeBodyCorrelationNojerkNomagNofreqZ
tBodyGyro-correlation()-Y,Z  |  timeGyroscopeBodyCorrelationNojerkNomagNofreqZ
tBodyGyroJerk-mean()-X  |  timeGyroscopeBodyMeanJerkNomagNofreqX
tBodyGyroJerk-mean()-Y  |  timeGyroscopeBodyMeanJerkNomagNofreqY
tBodyGyroJerk-mean()-Z  |  timeGyroscopeBodyMeanJerkNomagNofreqZ
tBodyGyroJerk-std()-X  |  timeGyroscopeBodyStdJerkNomagNofreqX
tBodyGyroJerk-std()-Y  |  timeGyroscopeBodyStdJerkNomagNofreqY
tBodyGyroJerk-std()-Z  |  timeGyroscopeBodyStdJerkNomagNofreqZ
tBodyGyroJerk-mad()-X  |  timeGyroscopeBodyMadJerkNomagNofreqX
tBodyGyroJerk-mad()-Y  |  timeGyroscopeBodyMadJerkNomagNofreqY
tBodyGyroJerk-mad()-Z  |  timeGyroscopeBodyMadJerkNomagNofreqZ
tBodyGyroJerk-max()-X  |  timeGyroscopeBodyMaxJerkNomagNofreqX
tBodyGyroJerk-max()-Y  |  timeGyroscopeBodyMaxJerkNomagNofreqY
tBodyGyroJerk-max()-Z  |  timeGyroscopeBodyMaxJerkNomagNofreqZ
tBodyGyroJerk-min()-X  |  timeGyroscopeBodyMinJerkNomagNofreqX
tBodyGyroJerk-min()-Y  |  timeGyroscopeBodyMinJerkNomagNofreqY
tBodyGyroJerk-min()-Z  |  timeGyroscopeBodyMinJerkNomagNofreqZ
tBodyGyroJerk-sma()  |  timeGyroscopeBodySmaJerkNomagNofreqNA
tBodyGyroJerk-energy()-X  |  timeGyroscopeBodyEnergyJerkNomagNofreqX
tBodyGyroJerk-energy()-Y  |  timeGyroscopeBodyEnergyJerkNomagNofreqY
tBodyGyroJerk-energy()-Z  |  timeGyroscopeBodyEnergyJerkNomagNofreqZ
tBodyGyroJerk-iqr()-X  |  timeGyroscopeBodyIqrJerkNomagNofreqX
tBodyGyroJerk-iqr()-Y  |  timeGyroscopeBodyIqrJerkNomagNofreqY
tBodyGyroJerk-iqr()-Z  |  timeGyroscopeBodyIqrJerkNomagNofreqZ
tBodyGyroJerk-entropy()-X  |  timeGyroscopeBodyEntropyJerkNomagNofreqX
tBodyGyroJerk-entropy()-Y  |  timeGyroscopeBodyEntropyJerkNomagNofreqY
tBodyGyroJerk-entropy()-Z  |  timeGyroscopeBodyEntropyJerkNomagNofreqZ
tBodyGyroJerk-arCoeff()-X,1  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-X,2  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-X,3  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-X,4  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-Y,1  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-Y,2  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-Y,3  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-Y,4  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-Z,1  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-Z,2  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-Z,3  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-arCoeff()-Z,4  |  timeGyroscopeBodyarCoeffJerkNomagNofreqNA
tBodyGyroJerk-correlation()-X,Y  |  timeGyroscopeBodyCorrelationJerkNomagNofreqY
tBodyGyroJerk-correlation()-X,Z  |  timeGyroscopeBodyCorrelationJerkNomagNofreqZ
tBodyGyroJerk-correlation()-Y,Z  |  timeGyroscopeBodyCorrelationJerkNomagNofreqZ
tBodyAccMag-mean()  |  timeAccelerometerBodyMeanNojerkMagNofreqNA
tBodyAccMag-std()  |  timeAccelerometerBodyStdNojerkMagNofreqNA
tBodyAccMag-mad()  |  timeAccelerometerBodyMadNojerkMagNofreqNA
tBodyAccMag-max()  |  timeAccelerometerBodyMaxNojerkMagNofreqX
tBodyAccMag-min()  |  timeAccelerometerBodyMinNojerkMagNofreqNA
tBodyAccMag-sma()  |  timeAccelerometerBodySmaNojerkMagNofreqNA
tBodyAccMag-energy()  |  timeAccelerometerBodyEnergyNojerkMagNofreqY
tBodyAccMag-iqr()  |  timeAccelerometerBodyIqrNojerkMagNofreqNA
tBodyAccMag-entropy()  |  timeAccelerometerBodyEntropyNojerkMagNofreqY
tBodyAccMag-arCoeff()1  |  timeAccelerometerBodyarCoeffNojerkMagNofreqNA
tBodyAccMag-arCoeff()2  |  timeAccelerometerBodyarCoeffNojerkMagNofreqNA
tBodyAccMag-arCoeff()3  |  timeAccelerometerBodyarCoeffNojerkMagNofreqNA
tBodyAccMag-arCoeff()4  |  timeAccelerometerBodyarCoeffNojerkMagNofreqNA
tGravityAccMag-mean()  |  timeAccelerometerGravityMeanNojerkMagNofreqNA
tGravityAccMag-std()  |  timeAccelerometerGravityStdNojerkMagNofreqNA
tGravityAccMag-mad()  |  timeAccelerometerGravityMadNojerkMagNofreqNA
tGravityAccMag-max()  |  timeAccelerometerGravityMaxNojerkMagNofreqX
tGravityAccMag-min()  |  timeAccelerometerGravityMinNojerkMagNofreqNA
tGravityAccMag-sma()  |  timeAccelerometerGravitySmaNojerkMagNofreqNA
tGravityAccMag-energy()  |  timeAccelerometerGravityEnergyNojerkMagNofreqY
tGravityAccMag-iqr()  |  timeAccelerometerGravityIqrNojerkMagNofreqNA
tGravityAccMag-entropy()  |  timeAccelerometerGravityEntropyNojerkMagNofreqY
tGravityAccMag-arCoeff()1  |  timeAccelerometerGravityarCoeffNojerkMagNofreqNA
tGravityAccMag-arCoeff()2  |  timeAccelerometerGravityarCoeffNojerkMagNofreqNA
tGravityAccMag-arCoeff()3  |  timeAccelerometerGravityarCoeffNojerkMagNofreqNA
tGravityAccMag-arCoeff()4  |  timeAccelerometerGravityarCoeffNojerkMagNofreqNA
tBodyAccJerkMag-mean()  |  timeAccelerometerBodyMeanJerkMagNofreqNA
tBodyAccJerkMag-std()  |  timeAccelerometerBodyStdJerkMagNofreqNA
tBodyAccJerkMag-mad()  |  timeAccelerometerBodyMadJerkMagNofreqNA
tBodyAccJerkMag-max()  |  timeAccelerometerBodyMaxJerkMagNofreqX
tBodyAccJerkMag-min()  |  timeAccelerometerBodyMinJerkMagNofreqNA
tBodyAccJerkMag-sma()  |  timeAccelerometerBodySmaJerkMagNofreqNA
tBodyAccJerkMag-energy()  |  timeAccelerometerBodyEnergyJerkMagNofreqY
tBodyAccJerkMag-iqr()  |  timeAccelerometerBodyIqrJerkMagNofreqNA
tBodyAccJerkMag-entropy()  |  timeAccelerometerBodyEntropyJerkMagNofreqY
tBodyAccJerkMag-arCoeff()1  |  timeAccelerometerBodyarCoeffJerkMagNofreqNA
tBodyAccJerkMag-arCoeff()2  |  timeAccelerometerBodyarCoeffJerkMagNofreqNA
tBodyAccJerkMag-arCoeff()3  |  timeAccelerometerBodyarCoeffJerkMagNofreqNA
tBodyAccJerkMag-arCoeff()4  |  timeAccelerometerBodyarCoeffJerkMagNofreqNA
tBodyGyroMag-mean()  |  timeGyroscopeBodyMeanNojerkMagNofreqNA
tBodyGyroMag-std()  |  timeGyroscopeBodyStdNojerkMagNofreqNA
tBodyGyroMag-mad()  |  timeGyroscopeBodyMadNojerkMagNofreqNA
tBodyGyroMag-max()  |  timeGyroscopeBodyMaxNojerkMagNofreqX
tBodyGyroMag-min()  |  timeGyroscopeBodyMinNojerkMagNofreqNA
tBodyGyroMag-sma()  |  timeGyroscopeBodySmaNojerkMagNofreqNA
tBodyGyroMag-energy()  |  timeGyroscopeBodyEnergyNojerkMagNofreqY
tBodyGyroMag-iqr()  |  timeGyroscopeBodyIqrNojerkMagNofreqNA
tBodyGyroMag-entropy()  |  timeGyroscopeBodyEntropyNojerkMagNofreqY
tBodyGyroMag-arCoeff()1  |  timeGyroscopeBodyarCoeffNojerkMagNofreqNA
tBodyGyroMag-arCoeff()2  |  timeGyroscopeBodyarCoeffNojerkMagNofreqNA
tBodyGyroMag-arCoeff()3  |  timeGyroscopeBodyarCoeffNojerkMagNofreqNA
tBodyGyroMag-arCoeff()4  |  timeGyroscopeBodyarCoeffNojerkMagNofreqNA
tBodyGyroJerkMag-mean()  |  timeGyroscopeBodyMeanJerkMagNofreqNA
tBodyGyroJerkMag-std()  |  timeGyroscopeBodyStdJerkMagNofreqNA
tBodyGyroJerkMag-mad()  |  timeGyroscopeBodyMadJerkMagNofreqNA
tBodyGyroJerkMag-max()  |  timeGyroscopeBodyMaxJerkMagNofreqX
tBodyGyroJerkMag-min()  |  timeGyroscopeBodyMinJerkMagNofreqNA
tBodyGyroJerkMag-sma()  |  timeGyroscopeBodySmaJerkMagNofreqNA
tBodyGyroJerkMag-energy()  |  timeGyroscopeBodyEnergyJerkMagNofreqY
tBodyGyroJerkMag-iqr()  |  timeGyroscopeBodyIqrJerkMagNofreqNA
tBodyGyroJerkMag-entropy()  |  timeGyroscopeBodyEntropyJerkMagNofreqY
tBodyGyroJerkMag-arCoeff()1  |  timeGyroscopeBodyarCoeffJerkMagNofreqNA
tBodyGyroJerkMag-arCoeff()2  |  timeGyroscopeBodyarCoeffJerkMagNofreqNA
tBodyGyroJerkMag-arCoeff()3  |  timeGyroscopeBodyarCoeffJerkMagNofreqNA
tBodyGyroJerkMag-arCoeff()4  |  timeGyroscopeBodyarCoeffJerkMagNofreqNA
fBodyAcc-mean()-X  |  frequencyAccelerometerBodyMeanNojerkNomagNofreqX
fBodyAcc-mean()-Y  |  frequencyAccelerometerBodyMeanNojerkNomagNofreqY
fBodyAcc-mean()-Z  |  frequencyAccelerometerBodyMeanNojerkNomagNofreqZ
fBodyAcc-std()-X  |  frequencyAccelerometerBodyStdNojerkNomagNofreqX
fBodyAcc-std()-Y  |  frequencyAccelerometerBodyStdNojerkNomagNofreqY
fBodyAcc-std()-Z  |  frequencyAccelerometerBodyStdNojerkNomagNofreqZ
fBodyAcc-mad()-X  |  frequencyAccelerometerBodyMadNojerkNomagNofreqX
fBodyAcc-mad()-Y  |  frequencyAccelerometerBodyMadNojerkNomagNofreqY
fBodyAcc-mad()-Z  |  frequencyAccelerometerBodyMadNojerkNomagNofreqZ
fBodyAcc-max()-X  |  frequencyAccelerometerBodyMaxNojerkNomagNofreqX
fBodyAcc-max()-Y  |  frequencyAccelerometerBodyMaxNojerkNomagNofreqY
fBodyAcc-max()-Z  |  frequencyAccelerometerBodyMaxNojerkNomagNofreqZ
fBodyAcc-min()-X  |  frequencyAccelerometerBodyMinNojerkNomagNofreqX
fBodyAcc-min()-Y  |  frequencyAccelerometerBodyMinNojerkNomagNofreqY
fBodyAcc-min()-Z  |  frequencyAccelerometerBodyMinNojerkNomagNofreqZ
fBodyAcc-sma()  |  frequencyAccelerometerBodySmaNojerkNomagNofreqNA
fBodyAcc-energy()-X  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqX
fBodyAcc-energy()-Y  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqY
fBodyAcc-energy()-Z  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqZ
fBodyAcc-iqr()-X  |  frequencyAccelerometerBodyIqrNojerkNomagNofreqX
fBodyAcc-iqr()-Y  |  frequencyAccelerometerBodyIqrNojerkNomagNofreqY
fBodyAcc-iqr()-Z  |  frequencyAccelerometerBodyIqrNojerkNomagNofreqZ
fBodyAcc-entropy()-X  |  frequencyAccelerometerBodyEntropyNojerkNomagNofreqX
fBodyAcc-entropy()-Y  |  frequencyAccelerometerBodyEntropyNojerkNomagNofreqY
fBodyAcc-entropy()-Z  |  frequencyAccelerometerBodyEntropyNojerkNomagNofreqZ
fBodyAcc-maxInds-X  |  frequencyAccelerometerBodymaxIndsNojerkNomagNofreqX
fBodyAcc-maxInds-Y  |  frequencyAccelerometerBodymaxIndsNojerkNomagNofreqY
fBodyAcc-maxInds-Z  |  frequencyAccelerometerBodymaxIndsNojerkNomagNofreqZ
fBodyAcc-meanFreq()-X  |  frequencyAccelerometerBodyMeanNojerkNomagFreqX
fBodyAcc-meanFreq()-Y  |  frequencyAccelerometerBodyMeanNojerkNomagFreqY
fBodyAcc-meanFreq()-Z  |  frequencyAccelerometerBodyMeanNojerkNomagFreqZ
fBodyAcc-skewness()-X  |  frequencyAccelerometerBodySkewnessNojerkNomagNofreqX
fBodyAcc-kurtosis()-X  |  frequencyAccelerometerBodyKurtosisNojerkNomagNofreqX
fBodyAcc-skewness()-Y  |  frequencyAccelerometerBodySkewnessNojerkNomagNofreqY
fBodyAcc-kurtosis()-Y  |  frequencyAccelerometerBodyKurtosisNojerkNomagNofreqY
fBodyAcc-skewness()-Z  |  frequencyAccelerometerBodySkewnessNojerkNomagNofreqZ
fBodyAcc-kurtosis()-Z  |  frequencyAccelerometerBodyKurtosisNojerkNomagNofreqZ
fBodyAcc-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAcc-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyNojerkNomagNofreqNA
fBodyAccJerk-mean()-X  |  frequencyAccelerometerBodyMeanJerkNomagNofreqX
fBodyAccJerk-mean()-Y  |  frequencyAccelerometerBodyMeanJerkNomagNofreqY
fBodyAccJerk-mean()-Z  |  frequencyAccelerometerBodyMeanJerkNomagNofreqZ
fBodyAccJerk-std()-X  |  frequencyAccelerometerBodyStdJerkNomagNofreqX
fBodyAccJerk-std()-Y  |  frequencyAccelerometerBodyStdJerkNomagNofreqY
fBodyAccJerk-std()-Z  |  frequencyAccelerometerBodyStdJerkNomagNofreqZ
fBodyAccJerk-mad()-X  |  frequencyAccelerometerBodyMadJerkNomagNofreqX
fBodyAccJerk-mad()-Y  |  frequencyAccelerometerBodyMadJerkNomagNofreqY
fBodyAccJerk-mad()-Z  |  frequencyAccelerometerBodyMadJerkNomagNofreqZ
fBodyAccJerk-max()-X  |  frequencyAccelerometerBodyMaxJerkNomagNofreqX
fBodyAccJerk-max()-Y  |  frequencyAccelerometerBodyMaxJerkNomagNofreqY
fBodyAccJerk-max()-Z  |  frequencyAccelerometerBodyMaxJerkNomagNofreqZ
fBodyAccJerk-min()-X  |  frequencyAccelerometerBodyMinJerkNomagNofreqX
fBodyAccJerk-min()-Y  |  frequencyAccelerometerBodyMinJerkNomagNofreqY
fBodyAccJerk-min()-Z  |  frequencyAccelerometerBodyMinJerkNomagNofreqZ
fBodyAccJerk-sma()  |  frequencyAccelerometerBodySmaJerkNomagNofreqNA
fBodyAccJerk-energy()-X  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqX
fBodyAccJerk-energy()-Y  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqY
fBodyAccJerk-energy()-Z  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqZ
fBodyAccJerk-iqr()-X  |  frequencyAccelerometerBodyIqrJerkNomagNofreqX
fBodyAccJerk-iqr()-Y  |  frequencyAccelerometerBodyIqrJerkNomagNofreqY
fBodyAccJerk-iqr()-Z  |  frequencyAccelerometerBodyIqrJerkNomagNofreqZ
fBodyAccJerk-entropy()-X  |  frequencyAccelerometerBodyEntropyJerkNomagNofreqX
fBodyAccJerk-entropy()-Y  |  frequencyAccelerometerBodyEntropyJerkNomagNofreqY
fBodyAccJerk-entropy()-Z  |  frequencyAccelerometerBodyEntropyJerkNomagNofreqZ
fBodyAccJerk-maxInds-X  |  frequencyAccelerometerBodymaxIndsJerkNomagNofreqX
fBodyAccJerk-maxInds-Y  |  frequencyAccelerometerBodymaxIndsJerkNomagNofreqY
fBodyAccJerk-maxInds-Z  |  frequencyAccelerometerBodymaxIndsJerkNomagNofreqZ
fBodyAccJerk-meanFreq()-X  |  frequencyAccelerometerBodyMeanJerkNomagFreqX
fBodyAccJerk-meanFreq()-Y  |  frequencyAccelerometerBodyMeanJerkNomagFreqY
fBodyAccJerk-meanFreq()-Z  |  frequencyAccelerometerBodyMeanJerkNomagFreqZ
fBodyAccJerk-skewness()-X  |  frequencyAccelerometerBodySkewnessJerkNomagNofreqX
fBodyAccJerk-kurtosis()-X  |  frequencyAccelerometerBodyKurtosisJerkNomagNofreqX
fBodyAccJerk-skewness()-Y  |  frequencyAccelerometerBodySkewnessJerkNomagNofreqY
fBodyAccJerk-kurtosis()-Y  |  frequencyAccelerometerBodyKurtosisJerkNomagNofreqY
fBodyAccJerk-skewness()-Z  |  frequencyAccelerometerBodySkewnessJerkNomagNofreqZ
fBodyAccJerk-kurtosis()-Z  |  frequencyAccelerometerBodyKurtosisJerkNomagNofreqZ
fBodyAccJerk-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,8  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-9,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,40  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-41,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,56  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-57,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,16  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-17,32  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-33,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-49,64  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-1,24  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyAccJerk-bandsEnergy()-25,48  |  frequencyAccelerometerBodyEnergyJerkNomagNofreqNA
fBodyGyro-mean()-X  |  frequencyGyroscopeBodyMeanNojerkNomagNofreqX
fBodyGyro-mean()-Y  |  frequencyGyroscopeBodyMeanNojerkNomagNofreqY
fBodyGyro-mean()-Z  |  frequencyGyroscopeBodyMeanNojerkNomagNofreqZ
fBodyGyro-std()-X  |  frequencyGyroscopeBodyStdNojerkNomagNofreqX
fBodyGyro-std()-Y  |  frequencyGyroscopeBodyStdNojerkNomagNofreqY
fBodyGyro-std()-Z  |  frequencyGyroscopeBodyStdNojerkNomagNofreqZ
fBodyGyro-mad()-X  |  frequencyGyroscopeBodyMadNojerkNomagNofreqX
fBodyGyro-mad()-Y  |  frequencyGyroscopeBodyMadNojerkNomagNofreqY
fBodyGyro-mad()-Z  |  frequencyGyroscopeBodyMadNojerkNomagNofreqZ
fBodyGyro-max()-X  |  frequencyGyroscopeBodyMaxNojerkNomagNofreqX
fBodyGyro-max()-Y  |  frequencyGyroscopeBodyMaxNojerkNomagNofreqY
fBodyGyro-max()-Z  |  frequencyGyroscopeBodyMaxNojerkNomagNofreqZ
fBodyGyro-min()-X  |  frequencyGyroscopeBodyMinNojerkNomagNofreqX
fBodyGyro-min()-Y  |  frequencyGyroscopeBodyMinNojerkNomagNofreqY
fBodyGyro-min()-Z  |  frequencyGyroscopeBodyMinNojerkNomagNofreqZ
fBodyGyro-sma()  |  frequencyGyroscopeBodySmaNojerkNomagNofreqNA
fBodyGyro-energy()-X  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqX
fBodyGyro-energy()-Y  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqY
fBodyGyro-energy()-Z  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqZ
fBodyGyro-iqr()-X  |  frequencyGyroscopeBodyIqrNojerkNomagNofreqX
fBodyGyro-iqr()-Y  |  frequencyGyroscopeBodyIqrNojerkNomagNofreqY
fBodyGyro-iqr()-Z  |  frequencyGyroscopeBodyIqrNojerkNomagNofreqZ
fBodyGyro-entropy()-X  |  frequencyGyroscopeBodyEntropyNojerkNomagNofreqX
fBodyGyro-entropy()-Y  |  frequencyGyroscopeBodyEntropyNojerkNomagNofreqY
fBodyGyro-entropy()-Z  |  frequencyGyroscopeBodyEntropyNojerkNomagNofreqZ
fBodyGyro-maxInds-X  |  frequencyGyroscopeBodymaxIndsNojerkNomagNofreqX
fBodyGyro-maxInds-Y  |  frequencyGyroscopeBodymaxIndsNojerkNomagNofreqY
fBodyGyro-maxInds-Z  |  frequencyGyroscopeBodymaxIndsNojerkNomagNofreqZ
fBodyGyro-meanFreq()-X  |  frequencyGyroscopeBodyMeanNojerkNomagFreqX
fBodyGyro-meanFreq()-Y  |  frequencyGyroscopeBodyMeanNojerkNomagFreqY
fBodyGyro-meanFreq()-Z  |  frequencyGyroscopeBodyMeanNojerkNomagFreqZ
fBodyGyro-skewness()-X  |  frequencyGyroscopeBodySkewnessNojerkNomagNofreqX
fBodyGyro-kurtosis()-X  |  frequencyGyroscopeBodyKurtosisNojerkNomagNofreqX
fBodyGyro-skewness()-Y  |  frequencyGyroscopeBodySkewnessNojerkNomagNofreqY
fBodyGyro-kurtosis()-Y  |  frequencyGyroscopeBodyKurtosisNojerkNomagNofreqY
fBodyGyro-skewness()-Z  |  frequencyGyroscopeBodySkewnessNojerkNomagNofreqZ
fBodyGyro-kurtosis()-Z  |  frequencyGyroscopeBodyKurtosisNojerkNomagNofreqZ
fBodyGyro-bandsEnergy()-1,8  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,8  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,8  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-9,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-9,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-9,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,40  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,40  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,40  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-41,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-41,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-41,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,56  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,56  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,56  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-57,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-57,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-57,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,8  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,8  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,8  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-9,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-9,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-9,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,40  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,40  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,40  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-41,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-41,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-41,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,56  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,56  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,56  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-57,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-57,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-57,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,8  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,8  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,8  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-9,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-9,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-9,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,40  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,40  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,40  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-41,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-41,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-41,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,56  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,56  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,56  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-57,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-57,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-57,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,16  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-17,32  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-33,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-49,64  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-1,24  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyGyro-bandsEnergy()-25,48  |  frequencyGyroscopeBodyEnergyNojerkNomagNofreqNA
fBodyAccMag-mean()  |  frequencyAccelerometerBodyMeanNojerkMagNofreqNA
fBodyAccMag-std()  |  frequencyAccelerometerBodyStdNojerkMagNofreqNA
fBodyAccMag-mad()  |  frequencyAccelerometerBodyMadNojerkMagNofreqNA
fBodyAccMag-max()  |  frequencyAccelerometerBodyMaxNojerkMagNofreqX
fBodyAccMag-min()  |  frequencyAccelerometerBodyMinNojerkMagNofreqNA
fBodyAccMag-sma()  |  frequencyAccelerometerBodySmaNojerkMagNofreqNA
fBodyAccMag-energy()  |  frequencyAccelerometerBodyEnergyNojerkMagNofreqY
fBodyAccMag-iqr()  |  frequencyAccelerometerBodyIqrNojerkMagNofreqNA
fBodyAccMag-entropy()  |  frequencyAccelerometerBodyEntropyNojerkMagNofreqY
fBodyAccMag-maxInds  |  frequencyAccelerometerBodymaxIndsNojerkMagNofreqNA
fBodyAccMag-meanFreq()  |  frequencyAccelerometerBodyMeanNojerkMagFreqNA
fBodyAccMag-skewness()  |  frequencyAccelerometerBodySkewnessNojerkMagNofreqNA
fBodyAccMag-kurtosis()  |  frequencyAccelerometerBodyKurtosisNojerkMagNofreqNA
fBodyBodyAccJerkMag-mean()  |  frequencyAccelerometerBodyMeanJerkMagNofreqNA
fBodyBodyAccJerkMag-std()  |  frequencyAccelerometerBodyStdJerkMagNofreqNA
fBodyBodyAccJerkMag-mad()  |  frequencyAccelerometerBodyMadJerkMagNofreqNA
fBodyBodyAccJerkMag-max()  |  frequencyAccelerometerBodyMaxJerkMagNofreqX
fBodyBodyAccJerkMag-min()  |  frequencyAccelerometerBodyMinJerkMagNofreqNA
fBodyBodyAccJerkMag-sma()  |  frequencyAccelerometerBodySmaJerkMagNofreqNA
fBodyBodyAccJerkMag-energy()  |  frequencyAccelerometerBodyEnergyJerkMagNofreqY
fBodyBodyAccJerkMag-iqr()  |  frequencyAccelerometerBodyIqrJerkMagNofreqNA
fBodyBodyAccJerkMag-entropy()  |  frequencyAccelerometerBodyEntropyJerkMagNofreqY
fBodyBodyAccJerkMag-maxInds  |  frequencyAccelerometerBodymaxIndsJerkMagNofreqNA
fBodyBodyAccJerkMag-meanFreq()  |  frequencyAccelerometerBodyMeanJerkMagFreqNA
fBodyBodyAccJerkMag-skewness()  |  frequencyAccelerometerBodySkewnessJerkMagNofreqNA
fBodyBodyAccJerkMag-kurtosis()  |  frequencyAccelerometerBodyKurtosisJerkMagNofreqNA
fBodyBodyGyroMag-mean()  |  frequencyGyroscopeBodyMeanNojerkMagNofreqNA
fBodyBodyGyroMag-std()  |  frequencyGyroscopeBodyStdNojerkMagNofreqNA
fBodyBodyGyroMag-mad()  |  frequencyGyroscopeBodyMadNojerkMagNofreqNA
fBodyBodyGyroMag-max()  |  frequencyGyroscopeBodyMaxNojerkMagNofreqX
fBodyBodyGyroMag-min()  |  frequencyGyroscopeBodyMinNojerkMagNofreqNA
fBodyBodyGyroMag-sma()  |  frequencyGyroscopeBodySmaNojerkMagNofreqNA
fBodyBodyGyroMag-energy()  |  frequencyGyroscopeBodyEnergyNojerkMagNofreqY
fBodyBodyGyroMag-iqr()  |  frequencyGyroscopeBodyIqrNojerkMagNofreqNA
fBodyBodyGyroMag-entropy()  |  frequencyGyroscopeBodyEntropyNojerkMagNofreqY
fBodyBodyGyroMag-maxInds  |  frequencyGyroscopeBodymaxIndsNojerkMagNofreqNA
fBodyBodyGyroMag-meanFreq()  |  frequencyGyroscopeBodyMeanNojerkMagFreqNA
fBodyBodyGyroMag-skewness()  |  frequencyGyroscopeBodySkewnessNojerkMagNofreqNA
fBodyBodyGyroMag-kurtosis()  |  frequencyGyroscopeBodyKurtosisNojerkMagNofreqNA
fBodyBodyGyroJerkMag-mean()  |  frequencyGyroscopeBodyMeanJerkMagNofreqNA
fBodyBodyGyroJerkMag-std()  |  frequencyGyroscopeBodyStdJerkMagNofreqNA
fBodyBodyGyroJerkMag-mad()  |  frequencyGyroscopeBodyMadJerkMagNofreqNA
fBodyBodyGyroJerkMag-max()  |  frequencyGyroscopeBodyMaxJerkMagNofreqX
fBodyBodyGyroJerkMag-min()  |  frequencyGyroscopeBodyMinJerkMagNofreqNA
fBodyBodyGyroJerkMag-sma()  |  frequencyGyroscopeBodySmaJerkMagNofreqNA
fBodyBodyGyroJerkMag-energy()  |  frequencyGyroscopeBodyEnergyJerkMagNofreqY
fBodyBodyGyroJerkMag-iqr()  |  frequencyGyroscopeBodyIqrJerkMagNofreqNA
fBodyBodyGyroJerkMag-entropy()  |  frequencyGyroscopeBodyEntropyJerkMagNofreqY
fBodyBodyGyroJerkMag-maxInds  |  frequencyGyroscopeBodymaxIndsJerkMagNofreqNA
fBodyBodyGyroJerkMag-meanFreq()  |  frequencyGyroscopeBodyMeanJerkMagFreqNA
fBodyBodyGyroJerkMag-skewness()  |  frequencyGyroscopeBodySkewnessJerkMagNofreqNA
fBodyBodyGyroJerkMag-kurtosis()  |  frequencyGyroscopeBodyKurtosisJerkMagNofreqNA
angle(tBodyAccMean,gravity)  |  angleAccelerometerBodyAngleNojerkNomagNofreqY
angle(tBodyAccJerkMean),gravityMean)  |  angleAccelerometerBodyAngleJerkNomagNofreqNA
angle(tBodyGyroMean,gravityMean)  |  angleGyroscopeBodyAngleNojerkNomagNofreqNA
angle(tBodyGyroJerkMean,gravityMean)  |  angleGyroscopeBodyAngleJerkNomagNofreqNA
angle(X,gravityMean)  |  angleGyroscopeGravityAngleNojerkNomagNofreqNA
angle(Y,gravityMean)  |  angleGyroscopeGravityAngleNojerkNomagNofreqNA
angle(Z,gravityMean)  |  angleGyroscopeGravityAngleNojerkNomagNofreqNA


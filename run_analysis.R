##
## Analysis of fitness data 
## Data source :  
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
##  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
## Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support 
## Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
## Vitoria-Gasteiz, Spain. Dec 2012
##
## Review readme.md for information about the data and how to use this script.
## Review codebook.md for data details.

## You must have the following libraries installed to run this script.
library("plyr")
library("reshape2")
library("utils")
library("Hmisc")

## Specify the subset of statistics that we want.  
## This dataset will include and feature containing the string mean or the strng std.
statswanted<-c("mean","std")

## Download the data if we don't have it.
destfile<-"./data/dataset.zip"
if (!file.exists(destfile))
{
        url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        ## Code for downloading is in the getdata.R file.
        source("./getdata.R")
        downloadData(url, destfile)
        unzipData(destfile)
}

## Run the file to set up the features data
## This program will create a number of the necessary variables and data sets 
## needed to create the tidy data.
## Use source() to call in all the code from that file and put the functions into the environment.
source("./handlefeatures.R")

## From handleFeatures

featureslistall<-createFeatures()
nfeaturesall<-length(featureslistall)

## Set up the activity labels if they have not already been saved in an R dataset.
if (!file.exists("./data/activityLabels.Rda")){
        activityLabels<-read.table("./data/UCI HAR Dataset/activity_labels.txt", 
                           colClasses=c("numeric","character"), 
                           col.names=c("activityid", "activityname"),
                           header=FALSE
                           )
        saveRDS(activityLabels, file="./data/activityLabels.Rda")
} else{
        activityLabels<-readRDS(file="./data/activityLabels.Rda")
}

## A function to read the separate test and train data sets and prepare them for merging.
## name will be test or train
createSubsetData<-function(name)
{        
        ## Set up the data file names and paths.
        xfile=paste0("./data/UCI HAR Dataset/", name[1], "/X_", name[1], ".txt")
        yfile=paste0("./data/UCI HAR Dataset/", name[1], "/y_",name[1],".txt")
        subjectfile=paste0("./data/UCI HAR Dataset/", name[1], "/subject_", name[1] , ".txt")
        ## Read the main data (x) file
        data1<-read.csv(xfile, sep="",
                            header=FALSE, colClasses=c("numeric"), strip.white=TRUE,
                            col.names=featureslistall)

        
        ## Start to work on adding descriptive activity names (to replace the numeric values)
        activities<-read.csv(yfile,
                     header=FALSE, colClasses=c("numeric"), 
                     col.names=c("activityid"))
        
        ## Now start the real processing by adding the descriptive names for the activities.
        activities<-join(x=activities, y=activityLabels)
        
        activityname<-as.array(activities$activityname)
        data3<-cbind(data1,activityname)
        
        ## Indicate which file this is coming from
        data3$source<-name[1]

        ## Add the subject information
        subjects<-read.csv(subjectfile,
                           header=FALSE, 
                           colClasses=c("numeric"), 
                           col.names=c("subjectid")
                           )
        subjectid<-as.array(subjects$subjectid)
        data3<-cbind(data3,subjectid)
}


## If the combined data file doesn't exist, create it. Otherwise read it.
if (!file.exists("./data/combineddata.Rda"))
{
        testdata<-createSubsetData("test")
        traindata<-createSubsetData("train")
        combineddata<-rbind(testdata,traindata)
        saveRDS(combineddata, file="./data/combineddata.Rda")
} else {
        combineddata<-readRDS(file="./data/combineddata.Rda")
}
expandedFeatures<-parseFeatureNames(featureslistall)

## This gives us the names that were used for the columns
expandedFeatures<-cbind(expandedFeatures, featureslistall)

expandedFeatures<-expandedFeatures[expandedFeatures$statistic %in% statswanted,]

colswewantfeatures<-expandedFeatures$featureslistall
idvars<-c("subjectid", "activityname")
colswewant<-c(idvars, colswewantfeatures)

trimmedCombineddata<-combineddata[,colswewant]

#featurelist<-as.array(expandedFeatures$feature)
## Melt the data so that we get very long data ready for analysis
dataMelted<-melt(trimmedCombineddata,
                 id=c(idvars), 
                 value="mean",
                 measure.vars=colswewantfeatures
                 )
## Get the within subject activity mean for each measure
hsum<-summarize(dataMelted$value, 
                by=llist(dataMelted$subjectid,dataMelted$activityname, dataMelted$variable
        ), 
        FUN=mean)
## Now we need to fix up the names 
colnames(hsum)[colnames(hsum) == "dataMelted$activityname"] <- "activityname"
colnames(hsum)[colnames(hsum) == "dataMelted$subjectid"] <- "subjectid"
colnames(hsum)[colnames(hsum) == "dataMelted$value"] <- "value"
colnames(hsum)[colnames(hsum) == "dataMelted$variable"] <- "featureslistall"
hsum$featureslistall<-as.character(hsum$featureslistall)

## This is the data saved in the file.
finaldata<-join(hsum, expandedFeatures, by="featureslistall")

## This is probably the most flexible compact format.
finaldata<-finaldata[,c("subjectid", "activityname", "feature", "value", "domain", "source", "accelerationsignal", 
                         "jerk", "magnitude", "statistic", "frequency", "dimension")]

## Write out the file for the project upload
## This will yield a data set of 14220 rows and 4 variables.
## This is a simple data set with one row per subject-activity-feature combination.
## This is the format most people on the Coursera forums are using.
getLongNarrowData<-function()
{
        datatosave<-finaldata[,c("subjectid", "activityname",
                "feature", "value")]
        write.table(datatosave, file="./data/tidyexercisedata.txt", row.names=FALSE)
}
##Use the functions below if an alternative format is better.
## Write out the file for the project upload
## This will yield a data set of 14220 rows and 11 variables.
## This is a simple data set with one row per subject-activity-feature combination.
## This is adds variables that make it easy to subset the data and to create long data in a form
## that is easier to use for modelling.
getLongNarrowPlusData<-function()
{
        write.table(finaldata, file="./data/tidyexerciseplusdata.txt", row.names=FALSE)
}


# To get one row per subject id combination ignoring the other variables with the feature name as the column name
# This will yield 180 rows and 86 columns.
# Technically not tidy because the column headers contain values such as dimension (xyz).
# This is useful for displaying the data.
getWideData<-function()
{
        wideData<-dcast(datatosave, 
          subjectid+activityname~feature,
         value.var="value",
         
        )
        write.table(wideData, file="./data/wideexercisedata.txt", row.names=FALSE)
        
}

## To get one row per subjc*activity*measurement-variable format
## Please read the readme file for more information.
## This creats 142,200 rows and 4 columns. Good for analysis, but a lot to load in memory.
getReallyTidy<-function()
{
        reallytidy<-melt(finaldata,
                         id=c(idvars), 
                         value="value",
                         drop

                        )
        write.table(reallytidy, file="./data/exercisedatalongtidy.txt", row.names=FALSE)
        
}
##This calls the function that creates the file uploaded for the assignment.
getLongNarrowData()


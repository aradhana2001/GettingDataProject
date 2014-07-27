## This function handles creating the feature names and making it possible to subset the data
## in flexible ways. 
createFeatures<-function()
{

                features<-read.table("./data/UCI HAR Dataset/features.txt",  colClasses=c("character"), 
                             row.names=1, col.names=c("featureid","featurename"), header=FALSE)      

                ## First part of cleaning up the variable names
                ## featurecolnames represents all of the columns in the original data set.
                ## Fix Up some anamolies
                arCoeffFix<-grep("[arCoeff()][^-][0-9]$", features$featurename)
               
                features[arCoeffFix,]<-sub("arCoeff()", "arCoeff()-", features[arCoeffFix,], fixed=TRUE)
                
                featurecolnames<-tolower(as.array(features$featurename))

                featurecolnames<-sub("()-", "Dim", featurecolnames, fixed=TRUE)

                ## Deal with special cases so they don't end up with identical names
                featurecolnames<-ifelse (substr(featurecolnames, 1, 7) == "angle(x", paste0(featurecolnames,"DimX"), featurecolnames)
                featurecolnames<-ifelse (substr(featurecolnames, 1, 7) == "angle(y", paste0(featurecolnames,"DimY"), featurecolnames)
                featurecolnames<-ifelse (substr(featurecolnames, 1, 7) == "angle(z", paste0(featurecolnames,"DimZ"), featurecolnames)
                
                ## Clean up special characters
                featurecolnames<-gsub("(","",featurecolnames, fixed=TRUE)
                featurecolnames<-gsub(")","",featurecolnames, fixed=TRUE)
                featurecolnames<-gsub(",","",featurecolnames, fixed=TRUE)
                featurecolnames<-gsub("-","",featurecolnames, fixed=TRUE)
                
                return (featurecolnames)
}

## This is going to break up the names into parts representing each variable
## THe Tidy data article says that variable names should not contain data.
parseFeatureNames<-function(featurecolnames)
{                

        ## This is the array of all of the transformed feature names (n =561)
        ## featurslistall is from environment

        ## work on breaking up name into columns
        ## In the original format the "features" are long strings of attributes containing complex 
        ## information about each type of measurement.
        ## This section of the code separates out the substrings in the same way as is done in
        ## the Hadley Tidy Data paper 
        ## We are only going to do this part of the work if it hasn't been done already.
        if (!file.exists("./data/expandedFeatures.Rda"))
        {
                nFeatures=length(featurecolnames)
                nchar<-nchar(featurecolnames)
                
                ## Array of all the statistics names. Note energy must deal with energy/bandsEnergy issue.
                ## Does not matter for this project however.
                ## Angle has to go last since those also contain the string "mean"
                statisticNames<-c( "mad", "max", "min", "sma", "iqr", "entropy", 
                                  "arCoeff", "correlation", "maxInds", "meanFreq", "skewness", "kurtosis", 
                                  "bandsEnergy", "energy", "mean", "std", "angle"
                                )
                
                ## Function for finding the rows that represent a statistic
                getStatisticRows<-function(statname)
                {
                        statname<-paste0(tolower(statname),"()")
                        statrownumbers<-grep(statname,featurecolnames)
                        return (statrownumbers)
                }
                
                statistic<-""

                ##Create a statistic variable for each feature
                for (i in 1:length(statisticNames))
                {
                        rownumbers<-getStatisticRows(statisticNames[i]) 
                        statistic[rownumbers]<-statisticNames[i]
                
                }
                
        
                domain<-substr(featurecolnames, 1, 1)
                domain[domain=="t"]<-"time"
                domain[domain=="f"]<-"frequency"
                domain[domain=="a"]<-"angle"

                dimension<-sub("^\\w+Dim", "", featurecolnames, ignore.case = FALSE, perl=TRUE)
                dimension<-ifelse(featurecolnames == dimension, "", paste0(featurecolnames,dimension))               
                
                ## This will only work for binary variables
                ## It searches for matches for str1 and if true it returns str3, otherwise str4
                ## Note this will not retain NAs, but instead assigns them a value of str4.
                breakUpFeatureName<-function(str1, str3, str4)
                {
                        str1l<-grepl(str1,featurecolnames)
                        
                        tempdf<-as.data.frame(cbind(str1l))
                        tempdf$variablename<-ifelse(tempdf$str1l == TRUE, str3, str4)
                }
                
                source<-breakUpFeatureName(
                                                str1="acc",
                                                str3="accelerometer",
                                                str4="gyroscope"
                                        )
                accelerationsignal<-breakUpFeatureName(
                                                str1="body",
                                                str3="body",
                                                str4="gravity"
                                        )
                jerk<-breakUpFeatureName(
                                                str1="jerk",
                                                str3="jerk",
                                                str4="no jerk"
                                        )
                magnitude<-breakUpFeatureName(
                                                str1="mag",
                                                str3="mag",
                                                str4="no mag"
                                        )
                
                frequency<-breakUpFeatureName(
                                                str1="freq",
                                                str3="freq",
                                                str4="no freq"
                                        )
                
                

                feature<-paste0(domain, capitalize(source), capitalize(accelerationsignal),
                                capitalize(statistic), capitalize(jerk), capitalize(magnitude),
                                                          capitalize(frequency), capitalize(dimension)
                        )
                
                
                feature<-gsub(" ", "", feature, fixed=TRUE)
                
                expandedFeatures<-as.data.frame(cbind(feature, domain, dimension, source, accelerationsignal,
                                        statistic, jerk, magnitude, frequency))
                saveRDS(expandedFeatures, file="./data/expandedFeatures.Rda")
        } else {
                expandedFeatures<-readRDS(file="./data/expandedFeatures.Rda")
        }

       return(expandedFeatures)
       
}

## statsWanted is an array of the statistic names that are used to subset the features.
## For example, for this assignment mean and std are wanted so statsWanted<-c("mean","std")
subsetFeatures<-function(statsWanted, expandedFeatures)
{
        expandedFeatures<-expandedFeatures[expandedFeatures$statistic %in% statsWanted,]
        write.table(expandedFeatures, file="./data/tidyfeaturestrimmed.txt", row.names=FALSE)
        feature<-expandedFeatures$feature
        
}

## Run this function to generate a map of original and simpified feature names
## This generates a warning but it's harmless.
getOldNewMap<-function(write=FALSE)
{
        featureslistall<-createFeatures()
        
        if  (!exists("./data/expandedFeature.rda"))
        {
                expandedlist<-parseFeatureNames(featureslistall)
        } else {
                expandedlist<-readRDS(file="./data/expandedFeatures.Rda")
        }
        expandedlist$featureslistall<-featureslistall
        
        
        ## We need this again. Since we only will do it once in while to make the map it 
        ## is okay to read it twice if needed
        features<-read.table("./data/UCI HAR Dataset/features.txt",  colClasses=c("character"), 
                             row.names=1, col.names=c("featureid","featurename"), header=FALSE)      
        
        features$featureslistall<-featureslistall
        
        
        oldNewMap<-join(features, expandedlist)
        oldNewMap<-oldNewMap[, c("featurename", "feature")]
        if (write==TRUE)
        {
                tableheader<-"
This presents a map of the feature names in the original data set to the feature names in this data set.

Note that not all possible combinations of attributes are present in the data set.

| Original feature name          |            	New feature name                         |
|:-------------------------------|:------------------------------------------------------|"
                writeLines(text=tableheader, con='./featurenamemap.md')
                write.table(oldNewMap, "./featurenamemap.md", 
                            quote=FALSE, 
                            row.names=FALSE, 
                            sep="  |  ",
                            append=TRUE
                            )
        }
}

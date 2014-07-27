## This is going to download and unzip the file. 
downloadData<-function(url, dest="./data/dataset.zip")
{
        if (file.exists(dest)){
                return;
        }

        library("data.table")
        if (!file.exists("data")){
                dir.create("data")
        }
        ## Set up file definitions and download the data

        download.file(url,
                        destfile=dest
                      )
        datedownloaded<-date()
}
unzipData<-function(dest)
{
        ## Get an array of file names
        datafiles<-unzip(zipfile=dest, exdir="./data", list=TRUE)
        datafiles<-datafiles[datafiles$Length > 0,]
        unzip(zipfile=dest, exdir="./data")
}

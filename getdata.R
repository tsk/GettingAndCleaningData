fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filePath <- "./Data/UCI_HAR_Dataset.zip"
if(!file.exists("Data")){
  dir.create("Data")
}

if(!file.exists(filePath)){
  download.file(fileURL,destfile= filePath,method="curl")
  dateDownloaded <- date()
  
  unzip(filePath,exdir="./Data")
}

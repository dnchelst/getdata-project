## You can Set the primary directory containing the zipped data set
# setwd(file.path("C:\\Users\\Dov\\Documents\\Personal", 
#  "Coursera\\GettingAndCleaningData\\CleaningDataProject")

## Download and unzip the compressed dataset
url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
print(paste("Downloading the dataset:", Sys.time()))
download.file(url1, "smartphone-data.zip", method="curl")
unzip("smartphone-data.zip")

## Reading in X, y, subject data
vals <- c("test", "train") # loop through test and training data
smartphone <- list()
for (val in vals){
  input.types <- c("X", "y", "subject") # loop through the three data files
  dfs <- list()
  for (type1 in input.types){
    file1 <- paste0(type1, "_", val, ".txt")
    print(paste("Reading", file1, Sys.time()))
    dfs[[type1]] <- read.table(file.path("UCI HAR Dataset", val, file1))
  }
  print(paste("Joining", val, "files:", Sys.time()))
  smartphone[[val]] <- cbind(dfs$X, dfs$subject, dfs$y) #
}
rm(dfs)
print(paste("Stacking the test and train data", Sys.time()))
smartphone.df <- rbind(smartphone$train, smartphone$test) 
rm(smartphone)

# Identifying mean and standard deviation columns and assign column names
measurement.labels <- read.table("UCI HAR Dataset\\features.txt", 
                                 stringsAsFactors=FALSE)
mean.std.columns <- subset(measurement.labels, 
                           grepl("mean|std", V2, ignore.case=TRUE))
smartphone.df <- smartphone.df[, c(mean.std.columns$V1, 562, 563)]

# Assigning headers and cleans them a bit
names(smartphone.df) <- c(mean.std.columns$V2, "subject", "activity.code")
names(smartphone.df) <- gsub("[-,()]+", ".", names(smartphone.df))
names(smartphone.df) <- gsub("\\(\\)", "", names(smartphone.df))
names(smartphone.df) <- gsub("[.]+$", "", names(smartphone.df))
names(smartphone.df) <- gsub("([a-z])([A-Z])", "\\1.\\2", names(smartphone.df))
names(smartphone.df) <- tolower(names(smartphone.df))
names(smartphone.df) <- gsub("(.+)[.](x|y|z)[.](.+)", "\\1.\\3.\\2", 
                             names(smartphone.df))
# Assigning descriptive activities
activity.df <- read.table("UCI HAR Dataset\\activity_labels.txt", 
                          stringsAsFactors=FALSE)
names(activity.df) <- c("activity.code", "activity")
smartphone.df <- merge(smartphone.df, activity.df, by="activity.code", all=TRUE)
smartphone.df$activity.code <- NULL

# Calculating mean values
print(paste("Calculating mean values:", Sys.time()))
smartphone.means <- aggregate(.~ subject + activity, data=smartphone.df, 
                  FUN=mean)
print(paste("Writing data to a file:", Sys.time()))
write.table(smartphone.means, file="cleaning_data_project_dovchelst.txt", 
            row.names=FALSE)
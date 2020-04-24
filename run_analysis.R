get_and_clean <- function() {
  # check if data directory exists, if not download file and unzip
  if (!file.exists("./UCI HAR Dataset")) {
    file_url <- 
      "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(file_url, destfile = "./getdata-projectfiles-UCI HAR Dataset.zip",
                  method = "curl")
    unzip("getdata-projectfiles-UCI HAR Dataset.zip")
  }
  
  # load in the activity labels, feature, test, and train subject,
  # datasets
  
  activity_labels <- read.table(
    "./UCI HAR Dataset/activity_labels.txt",
    col.names = c("activityNumber", "activity")
  )
  
  features <-
    read.table("./UCI HAR Dataset/features.txt", check.names = FALSE)
  
  # load in train dataset
  train_subject <-
    read.table("./UCI HAR Dataset/train/subject_train.txt", 
               col.names = "subject_id")
  
  train_activity <-
    read.table("./UCI HAR Dataset/train/y_train.txt", 
               col.names = "activity")
  
  train <- read.table(
    "./UCI HAR Dataset/train/X_train.txt",
    colClasses = rep("numeric", 561),
    col.names = features[[2]],
    check.names = FALSE
  )
  
  # load in test dataset
  test_subject <-
    read.table("./UCI HAR Dataset/test/subject_test.txt", 
               col.names = "subject_id")
  
  test_activity <-
    read.table("./UCI HAR Dataset/test/y_test.txt", 
               col.names = "activity")
  
  test <- read.table(
    "./UCI HAR Dataset/test/X_test.txt",
    colClasses = rep("numeric", 561),
    col.names = features[[2]],
    check.names = FALSE
  )
  
  
  
  # combine dataset for train and test
  merged_data <-
    rbind(cbind(train_subject, train_activity),
          cbind(test_subject, test_activity))
  
  # replace activity column with corresponding text labels from 
  # the activity_labels dataframe
  merged_data$activity <-
    activity_labels[match(merged_data$activity, activity_labels[[1]]), 2]
  
  # find all column/variable that contain "mean" or "std"
  mean_Std <- grep("mean|std", features[[2]])
  
  # update merged_data to include mean and std variables,
  # combine w/ subject/activity columns
  merged_data <- cbind(merged_data,
                   rbind(train, test)[, mean_Std])
  
  #  string patterns of variables to change in sub()
  pattern <-
    c(
      "^f",
      "^t",
      "Acc",
      "-mean\\(\\)",
      "-meanFreq\\(\\)",
      "-std\\(\\)",
      "Gyro",
      "Mag",
      "Jerk"
    )
  
  # string replacement
  replacement <-
    c(
      "freq_",
      "time_",
      "_acceleration",
      "_mean",
      "_mean_frequency",
      "_std",
      "_gyration",
      "_magnitude",
      "_jerk"
    )
  
  # replace each string pattern with its replacement in 
  # names(merged_data)
  for (i in seq_along(pattern)) {
    names(merged_data) <- sub(pattern[i], replacement[i], 
                              names(merged_data))
  }
  
  # create independent data set with average for each 
  # variable for each activity and subject
  newData <- aggregate(merged_data[, 3:length(merged_data)],
                       list(activity = merged_data$activity, 
                            subject = merged_data$subject_id), mean)
  }

write.table(get_and_clean(), file = 
              "HAR_Tidy_Dataset.txt", row.name = FALSE)

remove('get_and_clean')

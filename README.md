# Getting and Cleaning Data (Course Project)
Peer graded assignment in the course 'Getting and Cleaning Data course' Coursera.

## Project Description
Collected, worked with, and cleaned a data set.

The date set represents data collected from the accelerometers and gyrometers from 30 individuals wearing a smartphone on their waists. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



##Study design and data processing
The run_analysis.R script worked on the data set to produce a tidy data set that can be used for further analysis.

###Collection of the raw data
Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Included in this repository are **4** files:

1. README.md

2. Codebook.md

3. run_analysis.R

4. UCI HAR Tidy Averages Dataset.txt

## Original Data

The original data repository included **4** text files and **2** folders:

- `activity_labels.txt` - the mapping of numeric values 1 to 6 to the 6 activities previously described

- `features.txt` - list of all variable names for 561 variables

- `features_info.txt` - explaination for how the 561 variables are created and what they mean

- `README.txt` - overview of dataset

- **`test`** - folder containing the *test* subset of data (2947 observations), which contain 3 text files and 1 folder

    - `Inertial Signal` - raw signal data from the sensors, irrelevant for this project
    
    - `subject_test.txt` - mapping of each observation to the subject (number 1 to 30) performing the activity
    
    - `X_test.txt` - actual observations for 561 variables from the subset of subjects
    
    - `y_test.txt` - mapping of each observation to the activity performed (number 1 to 6)

- **`train`** - folder containing the *train* subset of data (7252 observations), which contain 3 text files and 1 folder

    - `Inertial Signal` - raw signal data from the sensors, irrelevant for this project
    
    - `subject_train.txt` - mapping of each observation to the subject (number 1 to 30) performing the activity
    
    - `X_train.txt` - actual observations for 561 variables from the subset of subjects
    
    - `y_train.txt` - mapping of each observation to the activity performed (number 1 to 6)
    
## Transformations/Processing

The processing performed on the data is executed by the **`run_analysis.R`** script in this repository, and it can be divided to roughly 6 parts:

**1. download the data**

The code checks for whether the unzip data directory already exists in the working directory. If not,  the file is downloaded from the provided link and subsequently unzipped. Next, load all of the relevant data from both the **`train`** and **`test`** folders (observations, subject mapping, and activity mapping), as well as the activity and variable labels from `activity_labels.txt` and `features.txt` files respectively.

**2. merge the training and the test sets to create one data set**

**3. extract only the measurements on the mean and standard deviation for each measurement**

The numeric values (1 to 6) in `activity` column are replaced with corresponding text descriptions (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) from the mapping provided by the `activity_labels.txt` file.

**4. use descriptive activity names to name the activities in the data set**

**5. appropriately label the data set with descriptive variable names.**

The `aggregate` function is used to summarize the data by taking the mean of the other variables grouped by activity and then subject, such that each subject will have 6 rows of data averages for each of the 6  correponding activities. With 30 subjects, this ultimately creates a 180 by 81 dataframe.

**6. Output the New Dataset**

The `write.table` function is used to save the resultant 180 by 81 dataframe to a text file titled `HAR_Tidy_Dataset.txt`.

## Final Output

The final output file, `HAR_Tidy_Dataset.txt`, contains the averages for the means and standard deviation of all measurements for each subject and activity pair along with the variable names. The detailed explanation of each of the 81 variables can be found in the [`Code_book.md`](https://github.com/dzabeligan/Get-and-Clean-Data/blob/master/Code_book.md) file. 
# Codebook for the Tidy Dataset

This codebook provides a descriptive summary of the `tidydata_average_YL.txt` dataset

## Dataset information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Attribute information
For each record in the dataset it is provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.


## Identifier variables
* `subject` - Test subject ID
* `activity` - Type of activity performed when measurements were taken

## Measurement variables
* `tbodyacc-mean-x`
* `tbodyacc-mean-y`
* `tbodyacc-mean-z`
* `tbodyacc-std-x`
* `tbodyacc-std-y`
* `tbodyacc-std-z`
* `tgravityacc-mean-x`
* `tgravityacc-mean-y`
* `tgravityacc-mean-z`
* `tgravityacc-std-x`
* `tgravityacc-std-y`
* `tgravityacc-std-z`
* `tbodyaccjerk-mean-x`
* `tbodyaccjerk-mean-y`
* `tbodyaccjerk-mean-z`
* `tbodyaccjerk-std-x`
* `tbodyaccjerk-std-y`
* `tbodyaccjerk-std-z`
* `tbodygyro-mean-x`
* `tbodygyro-mean-y`
* `tbodygyro-mean-z`
* `tbodygyro-std-x`
* `tbodygyro-std-y`
* `tbodygyro-std-z`
* `tbodygyrojerk-mean-x`
* `tbodygyrojerk-mean-y`
* `tbodygyrojerk-mean-z`
* `tbodygyrojerk-std-x`
* `tbodygyrojerk-std-y`
* `tbodygyrojerk-std-z`
* `tbodyaccmag-mean`
* `tbodyaccmag-std`
* `tgravityaccmag-mean`
* `tgravityaccmag-std`
* `tbodyaccjerkmag-mean`
* `tbodyaccjerkmag-std`
* `tbodygyromag-mean`
* `tbodygyromag-std`
* `tbodygyrojerkmag-mean`
* `tbodygyrojerkmag-std`
* `fbodyacc-mean-x`
* `fbodyacc-mean-y`
* `fbodyacc-mean-z`
* `fbodyacc-std-x`
* `fbodyacc-std-y`
* `fbodyacc-std-z`
* `fbodyaccjerk-mean-x`
* `fbodyaccjerk-mean-y`
* `fbodyaccjerk-mean-z`
* `fbodyaccjerk-std-x`
* `fbodyaccjerk-std-y`
* `fbodyaccjerk-std-z`
* `fbodygyro-mean-x`
* `fbodygyro-mean-y`
* `fbodygyro-mean-z`
* `fbodygyro-std-x`
* `fbodygyro-std-y`
* `fbodygyro-std-z`
* `fbodyaccmag-mean`
* `fbodyaccmag-std`
* `fbodybodyaccjerkmag-mean`
* `fbodybodyaccjerkmag-std`
* `fbodybodygyromag-mean`
* `fbodybodygyromag-std`
* `fbodybodygyrojerkmag-mean`
* `fbodybodygyrojerkmag-std`

## Activity labels
* `walking` (value `1`): subject was walking during the test
* `walkingupstairs` (value `2`): subject was walking up a staircase during the test
* `walkingdownstairs` (value `3`): subject was walking down a staircase during the test
* `sitting` (value `4`): subject was sitting during the test
* `standing` (value `5`): subject was standing during the test
* `laying` (value `6`): subject was laying down during the test

### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-xyz and tGyro-xyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-xyz and tGravityAcc-xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-xyz and tBodyGyroJerk-xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-xyz, fBodyAccJerk-xyz, fBodyGyro-xyz, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-xyz' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-xyz
tGravityAcc-xyz
tBodyAccJerk-xyz
tBodyGyro-xyz
tBodyGyroJerk-xyz
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-xyz
fBodyAccJerk-xyz
fBodyGyro-xyz
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation
meanFreq: Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## THE NEW DATASET INCLUDES THE MEAN OF THE VARIABLES OBTAINED IN THE ORIGINAL DATASET
The data was aggregated by subject and activity and the mean performed on all of the original variables representing either a mean, std, or meanFreq.  This resulted in 86 variables.  As with the original dataset, many of the variables contain an (x,y,z) at the end to indicate which of the X,Y,Z axes the measurements represent.

### The full list of vectors is

* activity - six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
* subjectId - identifier for each of the 30 subjects

* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz

* tbodyaccstdx
* tbodyaccstdy
* tbodyaccstdz

* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz

* tgravityaccstdx
* tgravityaccstdy
* tgravityaccstdz

* tbodyaccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz

* tbodyaccjerkstdx
* tbodyaccjerkstdy
* tbodyaccjerkstdz

* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz

* tbodygyrostdx
* tbodygyrostdy
* tbodygyrostdz

* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz

* tbodygyrojerkstdx
* tbodygyrojerkstdy
* tbodygyrojerkstdz

* tbodyaccmagmean
* tbodyaccmagstd

* tgravityaccmagmean
* tgravityaccmagstd

* tbodyaccjerkmagmean
* tbodyaccjerkmagstd

* tbodygyromagmean
* tbodygyromagstd

* tbodygyrojerkmagmean
* tbodygyrojerkmagstd

* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz

* fbodyaccstdx
* fbodyaccstdy
* fbodyaccstdz

* fbodyaccmeanfreqx
* fbodyaccmeanfreqy
* fbodyaccmeanfreqz

* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz

* fbodyaccjerkstdx
* fbodyaccjerkstdy
* fbodyaccjerkstdz

* fbodyaccjerkmeanfreqx
* fbodyaccjerkmeanfreqy
* fbodyaccjerkmeanfreqz

* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz

* fbodygyrostdx
* fbodygyrostdy
* fbodygyrostdz

* fbodygyromeanfreqx
* fbodygyromeanfreqy
* fbodygyromeanfreqz

* fbodyaccmagmean
* fbodyaccmagstd
* fbodyaccmagmeanfreq

* fbodybodyaccjerkmagmean
* fbodybodyaccjerkmagstd
* fbodybodyaccjerkmagmeanfreq

* fbodybodygyromagmean
* fbodybodygyromagstd
* fbodybodygyromagmeanfreq

* fbodybodygyrojerkmagmean
* fbodybodygyrojerkmagstd
* fbodybodygyrojerkmagmeanfreq

* angletbodyaccmeangravity
* angletbodyaccjerkmeangravitymean

* angletbodygyromeangravitymean
* angletbodygyrojerkmeangravitymean

* anglexgravitymean
* angleygravitymean
* anglezgravitymean

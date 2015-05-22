---
output: html_document
---
## Codebook for Coursera Getting and Cleaning Data Course Project  
_author_: Dov Chelst  
_date_: May 2015  

###Contents
1. Raw data overview
2. Processed data overview
3. Variable list - processed data
4. Variable descriptions
5. Processing steps in *run_analysis.R*
    i. Step-by-step description  
    ii. Conventions used  
    iii. Unusual features and/or assumptions made  
6. Why were these variables included?
7. How are the labels descriptive?
8. Why is this tidy data?

### Raw data overview  

The data set represents the results of an experiment to collect data on subjects 
based upon measurements taken from a Samsung S smartphone. The experiment 
included 30 subjects who wore a smartphone while performing regular daily 
activities.  

Each smartphone's built-in accelerometer and gyroscope recorded measurements at 
a rate of 50 Hz (50 times per second). The results were sampled and converted 
in order to measure a number of quantities including linear acceleration and 
velocity. These measurements were further filtered using standard signal 
processing techniques. Then, individual measurements were collected and 
converted into 561 statistical measurements including short-term averages 
(means), standard deviations. These were stored in files marked "X." 

At the same time, the subjects were videotaped. Their behavior was classified 
into one of six categories: laying, sitting, standing, walking, walking 
downstairs, and walking upstairs. These behaviors were noted at the same times 
associated with the smartphone measurements and stored in files marked "Y."

The labels identifying which measurements were associated with each of the 30 
subjects are stored in the files marked "subject."

Overall the data set includes 10,299 individual rows and 563 variables. 
Each individual subject has between 281 to 409 distinct measurement

The true purpose of this data was to develop a machine learning algorithm to use 
the smartphone measurements (or X) to identify the associated behaviors (or Y). 
For this reason, the data was separated into *test* and *train* subsets. The 
idea is to develop the algorithm on the training set and measure its accuracy 
against the test set. 

For our project, I ignored the data sets' ultimate purpose and focused on 
re-assembling the information into its original form and then reducing it into 
a new tidy data set.

### Processed data overview

The processed data represents a re-assembled data set containing 88 columns and 
180 rows. It includes information about all 6 behaviors for each of the 30 
subjects for a total of 180 rows. The first two columns refer to these values. 
The remaining 86 columns refer to measurements that involve some form of mean or 
standard deviation. 

### Variable list - processed data

The following 88 variables are included in the processed data file. 
The first two are self-explanatory and the rest will be described slightly below.

1. subject
2. activity
3. t.body.acc.mean.x
4. t.body.acc.mean.y
5. t.body.acc.mean.z
6. t.body.acc.std.x
7. t.body.acc.std.y
8. t.body.acc.std.z
9. t.gravity.acc.mean.x
10. t.gravity.acc.mean.y
11. t.gravity.acc.mean.z
12. t.gravity.acc.std.x
13. t.gravity.acc.std.y
14. t.gravity.acc.std.z
15. t.body.acc.jerk.mean.x
16. t.body.acc.jerk.mean.y
17. t.body.acc.jerk.mean.z
18. t.body.acc.jerk.std.x
19. t.body.acc.jerk.std.y
20. t.body.acc.jerk.std.z
21. t.body.gyro.mean.x
22. t.body.gyro.mean.y
23. t.body.gyro.mean.z
24. t.body.gyro.std.x
25. t.body.gyro.std.y
26. t.body.gyro.std.z
27. t.body.gyro.jerk.mean.x
28. t.body.gyro.jerk.mean.y
29. t.body.gyro.jerk.mean.z
30. t.body.gyro.jerk.std.x
31. t.body.gyro.jerk.std.y
32. t.body.gyro.jerk.std.z
33. t.body.acc.mag.mean
34. t.body.acc.mag.std
35. t.gravity.acc.mag.mean
36. t.gravity.acc.mag.std
37. t.body.acc.jerk.mag.mean
38. t.body.acc.jerk.mag.std
39. t.body.gyro.mag.mean
40. t.body.gyro.mag.std
41. t.body.gyro.jerk.mag.mean
42. t.body.gyro.jerk.mag.std
43. f.body.acc.mean.x
44. f.body.acc.mean.y
45. f.body.acc.mean.z
46. f.body.acc.std.x
47. f.body.acc.std.y
48. f.body.acc.std.z
49. f.body.acc.mean.freq.x
50. f.body.acc.mean.freq.y
51. f.body.acc.mean.freq.z
52. f.body.acc.jerk.mean.x
53. f.body.acc.jerk.mean.y
54. f.body.acc.jerk.mean.z
55. f.body.acc.jerk.std.x
56. f.body.acc.jerk.std.y
57. f.body.acc.jerk.std.z
58. f.body.acc.jerk.mean.freq.x
59. f.body.acc.jerk.mean.freq.y
60. f.body.acc.jerk.mean.freq.z
61. f.body.gyro.mean.x
62. f.body.gyro.mean.y
63. f.body.gyro.mean.z
64. f.body.gyro.std.x
65. f.body.gyro.std.y
66. f.body.gyro.std.z
67. f.body.gyro.mean.freq.x
68. f.body.gyro.mean.freq.y
69. f.body.gyro.mean.freq.z
70. f.body.acc.mag.mean
71. f.body.acc.mag.std
72. f.body.acc.mag.mean.freq
73. f.body.body.acc.jerk.mag.mean
74. f.body.body.acc.jerk.mag.std
75. f.body.body.acc.jerk.mag.mean.freq
76. f.body.body.gyro.mag.mean
77. f.body.body.gyro.mag.std
78. f.body.body.gyro.mag.mean.freq
79. f.body.body.gyro.jerk.mag.mean
80. f.body.body.gyro.jerk.mag.std
81. f.body.body.gyro.jerk.mag.mean.freq
82. angle.t.body.acc.mean.gravity
83. angle.t.body.acc.jerk.mean.gravity.mean
84. angle.t.body.gyro.mean.gravity.mean
85. angle.t.body.gyro.jerk.mean.gravity.mean
86. angle.gravity.mean.x
87. angle.gravity.mean.y
88. angle.gravity.mean.z

### Variable descriptions

* __x,y,z__: Measurements were evaluated in three dimensions and these letters 
are often appended to variables to distinguish between the three directions.  
* __t,f__: Measurements often measured linear quantities (t) averaged over time, 
or used a fast Fourier transform (FFT) to examine the frequency (f) domain. 
These prefix letters distinguish the two types of measurements.  
* __acc, gyro__: Measurements were collected either through the smartphone's 
accelerometer (linear acceleration) or gyroscope (angular velocity).  
* __mag__: Instead of measuring quantities in one dimension, these measurements 
can be combined to obtain an overall magnitude.  
* __mean, std, mean.freq__: mean value, standard deviation, and weighted average 
of the frequency components to obtain a mean frequency  
* __jerk__: These are higher order derivatives associated with acceleration or 
angular velocity.  
* __angle, gravity, body.body, etc.__ I have to say I don't well understand the 
remaining measurements.  

*Note*: I feel that it's important to mention that ALL of these variables have 
been **transformed**. 
The actual measurements are not shown. 
Instead, they have been normalized so that all values fall between -1 and 1. 
This is a standard technique when preparing data for machine learning applications. 
It assures that variations in magnitude between variables doesn't automatically 
bias the learning method in favor of higher-magnitude variables.

### Processing steps in *run_analysis.R*

#### Step-by-step description

1. Identifying working directory. This section is commented out and optional  
2. The next step uses `download.file` to obtain the archived smartphone data, 
and `unzip` to decompress it.  
3. Afterwards, the script uses a pair of nested loops to:  
    i. Enter the __test__ or __train__ directory, and  
    ii. Load each of the three files (__X__, __y__, __subject__) as a list of 
    data frames,  
    iii. Combine the three data frames using `cbind`, and finally  
    iv. Stack the __test__ and __train__ data frames using `rbind` into a single 
    data frame named __smartphone.df__. 
4. Next, the script loads the __X__ data frame's variable names. It uses `grep` 
to identify names that reference either a mean or standard deviation ignoring 
capitalizations. It also removes all other columns from __smartphone.df__.
5. At this point, column names are not descriptive. 
This section assigns the variable names that were loaded in the prior step and 
attaches them to __smartphone.df__. 
It then cleans up the names, separating words, removing underscores and 
parentheses, and converting everything to lowercase.  
6. At this point, activities are identified as values from 1 to 6. 
The activity descriptions are loaded as a separate data frame and merged with 
__smartphone.df__. 
Then, the coded variable (1 to 6) is removed so that only the activity 
descriptions remain. 
7. The __aggregate__ function is used to compute the mean of each 
measurement variable grouped by subject and activity. 
This method uses "dot" operator in the expression `.~ subject + activity` within 
the first argument to reference _all_ remaining 86 variables. 
In addition, it can be described in a single line of R code.  
8. The resulting __smartphone.means__ data frame is written to a text file.

#### Conventions used

The conventions followed in run_analysis and resulting output conform mostly with 
[Google's R Style Guide](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml).   

This is a rather short file, so the primary conventions followed are associated 
with variable or column names. 
Any name with with more than one word, abbreviated or otherwise, is separated 
with periods rather than underscores or a system of capitalization.


#### Unusual features and/or assumptions made

Most of this section is mentioned in the _README.md_ file as well.

__Identical ordering__: Before combining the __X__, __y__, and __subject__ 
training and test data sets, I noted that each had the same number of rows. 
There was no common id variable in each data set to use when merging them.
Instead, I assumed that each set was ordered identically and that the first row 
of each set matched the first row of the other two data sets.

__Data download__: It wasn't clear if the script was supposed to start after the 
data was already downloaded and extracted. 
Because, we had studied how to use R to download data in the class, I thought I 
might as well have the script download the file and unzip it as well as process 
it.

__Directory preservation__: It wasn't completely clear if the downloaded data 
was supposed to placed in a single directory of it would be fine to preserve the 
directory structure that existed within the original archived file. 
I chose to preserve the original file structure.

__Verbose__: Downloading a file and reading data into R can be time-consuming. 
I included some messages to show the script's progress as it proceeds through 
most of its steps.

__stringsAsFactors__: I almost always read data with `stringsAsFactors=FALSE` 
to avoid any potential errors. 
This wasn't necessary for the primary data sets, but was used for variable names 
and activity descriptions.

### Why were these variables included?

Each variable referenced some form of mean or standard deviation. 
One might argue that a "mean frequency" is not the kind of "mean" that was requested. 
Nevertheless, a similar argument could be made to include them and when in doubt 
I prefer tp keep the added variables.

### How the labels descriptive?

Ideally, column labels would contain no abbreviations. 
However, because each individual variable contains five or more descriptions, 
this isn't feasible. 
For example, "t.body.acc.mean.x" would read "linear.body.acceleration.mean.x". 
This converts a name with 17 characters to one with 31 characters. 
Other examples are even worse. 
With the abbreviations described above, it should be reasonably easy to read 
the variable's initial purpose.

### Why is this tidy data?

It follows the rules of tidy data:  

* Each measured variable is in a separate column 
* Each row represents a different observation for an individual subject and 
activity  

Another alternative would be to have only four columns: _subject_, _activity_, 
_measurement.type_, and _mean.value_.
This would give a data frame with 15,480 rows that would be arguably more 
difficult to read.  

A system that attempted to add a column that combined different coordinate 
directions (x, y, z, and mag) would have a problem with variables 82-85 
(_angle.t.body.acc.mean.gravity_, etc.). 
Other systems along the same lines would also find variables that didn't conform to 
the relevant requirements.
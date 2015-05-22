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

#### Raw data overview  

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
For this reason, the data was separated into _test_ and _train_ subsets. The 
idea is to develop the algorithm on the training set and measure its accuracy 
against the test set. 

For our project, we ignored the data sets ultimate purpose and focused on 
re-assembling the information into its original form and then reducing it into 
a new tidy data set.

#### Processed data overview

The processed data represents a re-assembled data set containing 88 columns and 
180 rows. It includes information about all 6 behaviors for each of the 30 
subjects for a total of 180 rows. The first two columns refer to these values. 
The remaining 86 columns refer to measurements that involve some form of mean or 
standard deviation. 

#### Variable list - processed data

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

#### Variable descriptions

#### Processing steps in *run_analysis.R*

##### Step-by-step description

##### Conventions used

##### Unusual features and/or assumptions made

#### Why were these variables included?

#### How the labels descriptive?

#### Why is this tidy data?

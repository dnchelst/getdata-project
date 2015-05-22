### Coursera: Getting and Cleaning Data: Course Project  

This repository contains all the necessary files required to complete this 
project:  

1. __README.md__: this README file  
2. __run_analysis.R__: a script to process the machine learning data from UCI and 
convert it into a tidy data set  
3. __CodeBook.md__: a basic description of the variables within the tidy data set, 
a review of the R script used to process the data, an explanation for why the 
variables were chosen and how the resulting data is "tidy"  

Here are a few additional noteworthy points when running the script:  

* It requires the __dplyr__ package. It will not check if the package is 
installed.   
* You can specify the location of the working directory where the original data 
is located.root directory. If you don't mind where the data resides, just leave 
it alone. 
* The script actually downloads the raw data, unzips it, and then processes it.  
* It assumes that after the archive is uncompressed, its directory structure is 
preserved.  
* To be descriptive, the script prints some descriptions as it loads and 
combines the raw data files. As these files were large, I wanted to track the 
elapsed time for these steps. 
* The analysis was performed on a PC running Windows 8, R 3.2.0, and using 
RStudio. It has not been tested on a Mac or Linux machine.
* It took 75 seconds to run, which depends upon the platform, processing speed, 
and internet bandwidth.

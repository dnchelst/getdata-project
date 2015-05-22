### Coursera: Getting and Cleaning Data: Course Project


This repository contains all the necessary files required to complete this 
project:  

1. __README.md__: this README file  
2. __run_analysis.r__: a script to process the machine learning data from UCI and 
convert it into a tidy data set  
3. __CodeBook.md__: a basic description of the variables within the tidy data set, 
a review of the R script usesd to process the data, a quick review explaining 
why the variables were chosen and why the resulting data is "tidy"  

Here are a few additional noteworthy points:  

* The script actually downloads the raw data, unzips it, and then processes it.  
* It assumes that after the archive is uncompressed, its directory structure is 
preserved.  
* To be descriptive, the script prints some descriptions as it loads and 
combines the raw data files. As these files were large, I wanted to track the 
elapsed time for these steps. 
* The analysis was performed on a PC running Windows 8, using RStudio, 
running R 3.2.0  

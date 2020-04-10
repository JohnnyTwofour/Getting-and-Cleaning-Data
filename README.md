==================================================================
Getting and Cleaning Data - Coursera
==================================================================
The supplied data is the Human Activity Recognition Using Smartphones Dataset (Version 1.0)
==================================================================
The assignment is to take the data set, extract mean and std variables and take the mean of these variables over the subjects and activities

The deliverables for this assignment are:
======================================

- README.md : shows how the R script works
- Code Book: explains the alterations made to the origianl code book (feature_info.txt)
- run_analysis.R : the script to create the tidy dataset
- tidy dataset: the output of the run_analysis.R

run_analysis.R was built as follows:
=========================================
The code pulls the data in from the working directory where the extracted zip file is located.
It attaches labels to the appropriate columns then joins the subject_train, y_train/test, x_train/test tables together.
The script then extracts the variables containing the word "mean" | "std" and stores it in a table called MSTable.
This tables is then run through a loop which takes the mean of the selected variable over the subject and activity type.
This data is then labeled and stored in a "tidydata" data frame.
The data frame is then written to a .txt file.

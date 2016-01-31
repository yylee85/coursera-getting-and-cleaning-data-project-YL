# Getting and Cleaning Data - Course Project

Yong Yi Lee

## Overview

This repository contains the submission for the "Getting and Cleaning Data" course in the Coursera Data Science track.

## Purpose

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 

1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

## Project Instructions

The project involves creating a single R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Files

`run_analysis.R` contains the code used to produce the tidy dataset of average variables uploaded as `tidydata_average_YL.txt`

`CodeBook.md` describes the tidy dataset of average variables produced by the `run_analysis.R` script

## Instructions for sourcing `run_analysis.R` script

Please note that the R script checks to see if there is an existing copy of the `UCI-HAR-dataset.zip` file in the R working directory. If no existing file is found, then the script will automatically download the file for you prior to running the analysis.

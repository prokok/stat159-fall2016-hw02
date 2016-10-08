Code
***

There are two R scripts in code directory: eda-script.R, regression-script.R

* eda-script.R does the followings:
	1. It reads the Advertising.csv data set located in the data directory.
	2. It computes the summary statistics of TV and Sales and saves the results, eda-output.txt, into the data directory. 
	3. It generates the histograms of TV and Sales in png and pdf formats and saves those plots in the image directory. 

* regression-script.R does the followings:
	1. It reads the Advertising.csv data set from the data directory
	2. It computes the "regression" object using lm() function, summary of the lm() function and saves them in regression.RData located in the data directory. 
	3. It generates the scatterplot with the regression line in png and pdf formats and saves the scatterplot in the image directory.	
 
Author : Phil Hoon, Oh
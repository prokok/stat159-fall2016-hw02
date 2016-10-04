.PHONY: all data clean

all: report.pdf eda-output.txt regression.Rdata

data: 
	curl -O "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"
	mv Advertising.csv data
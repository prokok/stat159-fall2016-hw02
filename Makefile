.PHONY: all data clean

all: report.pdf eda-output.txt regression.Rdata

data: 
	curl -O "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"
	mv Advertising.csv data

report.pdf: report.Rmd regression.Rdata scatterplot-tv-sales.png
	

regression.Rdata: regression-script.R Advertising.csv
	

eda-output.txt: eda-script.R Advertising.csv
	

	
clean:
	rm -f report/report.pdf report/report.html
	
	
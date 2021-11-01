# Makefile to generate report of preferences
	
all : results/favorites_combined.csv results/plot.png reports/report.pdf

# Generate merged favorites table
results/favorites_combined.csv : \
			data/favorites_*.csv
	mkdir results
	awk '(NR == 1) || (FNR > 1)' data/favorites_*.csv > results/favorites_combined.csv
	
# Generate plot
results/plot.png : \
			results/favorites_combined.csv \
			code/make_plot.R
	Rscript code/make_plot.R
	
# Generate report
reports/report.pdf : \
			results/plot.png \
			code/report.Rmd
	mkdir reports
	R -e 'library(rmarkdown);render("code/report.Rmd",output_format="all", output_dir="reports/")'

# remove outputs
clean: 
	rm -rf results
	rm -rf reports

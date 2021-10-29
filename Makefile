# Makefile to generate report of preferences
	
# Generate merged favorites table
results/favorites_combined.csv : \
			data/favorites_*.csv
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
	R -e 'library(rmarkdown);render("code/report.Rmd",output_format="all", output_dir="reports/")'

# remove outputs
clean: 
	rm results/favorites_combined.csv
	rm results/plot.png
	rm reports/report*

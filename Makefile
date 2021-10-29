# Makefile to generate report of preferences
	
# Generate merged favorites table
demo-files/favorites_combined.csv : \
			demo-files/favorites_*.csv
	head -n 1 demo-files/favorites.csv > demo-files/favorites_combined.csv && tail -n+2 -q demo-files/favorites_*.csv >> demo-files/favorites_combined.csv
	
# Generate plot
demo-files/plot.png : \
			demo-files/favorites_combined.csv \
			demo-files/make_plot.R
	Rscript demo-files/make_plot.R
	
# Generate report
demo-files/report.% : \
			demo-files/plot.png \
			demo-files/report.Rmd
	R -e 'library(rmarkdown);render("demo-files/report.Rmd",output_format="all")'	

# remove outputs
clean: 
	rm demo-files/favorites_combined.csv
	rm demo-files/plot.png
	rm demo-files/report.pdf
	rm demo-files/report.md
	rm demo-files/report.html
wildcards = glob_wildcards('data/favorites_{initials}.csv')

rule all:
    input: 
        "reports/report.pdf",
        "reports/report.html",
        "reports/report.md",
        "results/favorites_combined.csv",
        "results/plot.png"
    
rule sh_join_favorites:
    input: 
        header="data/favorites.csv", # A template csv file that we are going to use for headers
        files=expand('data/favorites_{init}.csv', init = wildcards.initials)
    output: "results/favorites_combined.csv"
    params:
        files="data/favorites_*.csv"
    shell:
        """
        awk '(NR == 1) || (FNR > 1)' {input.files} > {output}
        """
    
rule r_plot_favorites:
    input: rules.sh_join_favorites.output
    output: "results/plot.png"
    conda: "envs/r-tidyverse.yaml"
    shell:
        """
        Rscript code/make_plot.R
        """

rule r_write_report:
    input: 
        rules.r_plot_favorites.output,
    output: 
        "reports/report.pdf",
        "reports/report.html",
        "reports/report.md"
    conda: "envs/r-tidyverse.yaml"
    params:
    shell:
        """
        Rscript -e \'library(rmarkdown); rmarkdown::render("code/report.Rmd", output_dir="reports/", output_format="all")\'
        """
onsuccess:
    print("🎉 completed successfully")

onerror:
    print("💥 errors occured")


    
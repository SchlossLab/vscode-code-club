import os
import pandas as pd

faves_table = "favorites.csv"
favesTable = pd.read_csv(faves_table, index_col="Name", sep=",")

#NAMES = favesTable.index.values


rule sh_join_favorites:
    input: faves_table
    output: favorites_combined.csv
    shell:
        """
        head -n 1 {input} > favorites_combined.csv && tail -n+2 -q favorites_*.csv >> favorites_combined.csv
        """
    
rule r_plot_favorites:
    input:
    output:
    conda: 

rule write_report:
    input:
    output:
    conda: 



    
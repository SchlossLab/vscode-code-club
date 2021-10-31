# vscode-code-club

## Introduction

This repo is meant to be used during a live demonstration of the VS Code IDE during a Schloss Lab Code Club. In it you will find setup instructions, and various file types that will help in this demo.

---

## Setup

1. Please download VS Code from [here](https://code.visualstudio.com/download). (If you are on a mac, make sure you drag VS Code to your applications folder after it downloads!)
2. If you'd like to practice using the Source Control with Github, make sure your Git credentials are updated on your local machine/Great Lakes!
   * see [Creating a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).
3. If you'd like to use the snakemake portion of this lesson, please make sure to have snakemake installed. e.g. with [miniconda3](https://docs.conda.io/en/latest/miniconda.html):

    > ```{bash}
    > conda create -n snakemake snakemake
    > ```

---

## Visual Studio Code walkthrough

### General introduction and extension install

VS Code is a free IDE from microsoft that can be used with a variety of programming languages. It is completely customizable for exactly your needs. The use of extensions allow the user to add just the features they want. VS Code supports debugging, syntax highlighting, code completion, GitHub, keyboard shortcuts, and more! This repository mimics a typical Schloss Lab project directory to demonstrate the utility of VS Code for our everyday work. 

To get the most out of VS Code, you'll want to install extensions for the languages and types of activities you'll be doing. Some useful extensions that we have identified are listed below:

* VSCode on Great Lakes:
  * [remote-SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
* Snakemake
  * [Snakemake Language](https://marketplace.visualstudio.com/items?itemName=Snakemake.snakemake-lang)
* Github Functions
  * [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  * [GitHub Pull Requests and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)
  * [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)
* R specific
  * [R](https://marketplace.visualstudio.com/items?itemName=Ikuyadeu.r)
  * [R Markdown all-in-one](https://marketplace.visualstudio.com/items?itemName=TianyiShi.rmarkdown)
* Fun & convenient!
  * [Vscode-pdf](https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf) - allows for viewing PDFs
  * [HTML Preview](https://marketplace.visualstudio.com/items?itemName=tht13.html-preview-vscode) - allows for HTML previews
  * [Indent to Bracket](https://marketplace.visualstudio.com/items?itemName=LAK132.indent-to-bracket) - automatic indentation
  * [Rainbow csv](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv) - colored columns for csv/tsv files
  * [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense) - filename autocompletion
  
Additionally, to configure specific settings in VS Code you can either used the settings user interface or edith the settings.JSON file directly as described [here](https://code.visualstudio.com/docs/getstarted/settings)
  
**Walkthrough of the project directory**

```{bash}
.
├── Makefile
├── README.md
├── code
│   ├── favorites_table.R
│   ├── make_plot.R
│   └── report.Rmd
├── data
│   ├── favorites.csv
├── envs
│   └── r-tidyverse.yaml
└── snakefile
```

### Github functionality

**Some extensions to get the most out of Github in VScode:**

Git Issues and Pull Requests, Git Graphs, Git Lens

**Follow-along steps to participate in this project**

 1. Using the favorites.csv as a template, fill out a single line with your answers for the headers. **Save-As** your edits to a new file in the data folder with the pattern "favorites_{initials}.csv"
 2. We will `git commit` our new file using VScode Source Control!
 3. we will `git push` our new files to the repo. There should be a unique file for everyone who is participating.
 4. We will `git pull` all the new files into our repo.

Running through these steps should result in everyone having several favorites files in their data folder. Next we will use them in our data analysis.

### R and R Markdown

**Some extensions to get the most out of R/R Markdown in VScode:** 
* R
* R Markdown All in One
* Indent to Complete

R package to to install: 
```
install.packages("languageserver")
```
Also recommended is installing the [radian console](https://github.com/randy3k/radian) for R. 

### Putting it all together

Makefiles and Snakemake files have their own syntax highlighting and are easy to create, deploy and analyze output all from the same window with a variety of languages and functions.

To run all the steps of the example project with snakemake...
\<sarah put snakemake info here here\>

If you dont have snakemake configured, you can use the makefile instead. To run the makefile and produce all expected output files, execute this command from the top level of the project directory:
```
make all
```
You can remove all the output files by running:
```
make clean
```

---

## Additional Resources

[VS Code documentation](https://code.visualstudio.com/docs)

[A Fresh Start for R in VS Code](https://medium.com/analytics-vidhya/a-fresh-start-for-r-in-vscode-ec61ed108cf6)

[R Markdown Notebook in VS Code](https://yingqijing.medium.com/r-markdown-notebook-in-vs-code-3adb5a61417a)

[Youtube - Ken Run: Using R in VS Code](https://youtu.be/9xXBDU2z_8Y)

# vscode-code-club

## Introduction

This repo is meant to be used during a live demonstration of the VSCode IDE during a Schloss Lab Code Club. In it you will find setup instructions, and various file types that will help in this demo.

---

## Setup

1. Please download VSCode from [here](https://code.visualstudio.com/download).
2. If you'd like to practice using the Source Control with Github, make sure your Git credentials are updated on your local machine/Great Lakes!
   * see [Creating a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).
3. If you'd like to use the snakemake portion of this lesson, please make sure to have snakemake installed. e.g. with [miniconda3](https://docs.conda.io/en/latest/miniconda.html):

    > ```{bash}
    > conda create -n snakemake snakemake
    > ```

---

## Visual Studio Code walkthrough

### General introduction and extension install

**Install the following Extensions:**

* VSCode on Great Lakes:
  * remote-SSH
* Github Functions
  * GitLens
  * GitHub Pull Requests and Issues
  * Git Graph
  * R specific
    * R
    * R Markdown all-in-one
* Fun & convenient!
  * Vscode-pdf
  * Indent to Bracket
  * Rainbow csv
  * Path Intellisense
  
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

**Some packages to get the most out of Github in VScode:**

Git Issues and Pull Requests, Git Graphs, Git Lens

**Follow-along steps to participate in this project**

 1. Using the favorites.csv as a template, fill out a single line with your answers for the headers. **Save-As** your edits to a new file in the data folder with the pattern "favorites_{initials}.csv"
 2. We will `git commit` our new file using VScode Source Control!
 3. we will `git push` our new files to the repo. There should be a unique file for everyone who is participating.
 4. We will `git pull` all the new files into our repo.

Running through these steps should result in everyone having several favorites files in their data folder. Next we will use them in our data analysis.

### R and R Markdown

### Putting it all together

Makefiles and Snakemake files have their own syntax highlighting and are easy to create, deploy and analyze output all from the same window with a variety of languages and functions.

---

## Resources

[R Markdown Notebook in VS code](https://yingqijing.medium.com/r-markdown-notebook-in-vs-code-3adb5a61417a)

[Youtube - Ken Run: Using R in VS code](https://youtu.be/9xXBDU2z_8Y)

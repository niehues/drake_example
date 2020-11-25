# Example R project using renv and drake

This R project example using `renv` and `drake` is based on

- [An introduction to renv by Kevin Ushey](https://rstudio.github.io/renv/articles/renv.html)
- [The drake user manual](https://books.ropensci.org/drake/)
- [The official drake examples github repository](https://github.com/wlandau/drake-example)

## Installation requirements

- R (example tested with version 4.0.3)
- RStudio (example tested with Version 1.3.1073)
- [Rtools](https://cran.r-project.org/bin/windows/Rtools/)

### Required R packages

Install the `renv` for management of a project-local library environment before opening an R project that uses `renv`. 

```{r}
install.packages("renv")
```
## Setting up the package environment with `renv`

A brief overview of `renv` commands is given below. See [this introduction to the renv workflow](https://rstudio.github.io/renv/articles/renv.html#workflow-1) for more detail.

```{r}
renv::init()      # initialize the project package environment, create lockfile
renv::snapshot()  # save current state of library to lockfile `renv.lock`
renv::restore()   # restore environment from lockfile
```

## Using drake to run the workflow

This project uses drake. Overview of files in project at this stage:

```
drake_example/
├───.gitignore          
├───.Rprofile           # activation of renv
├───_drake.R            # used by run.R
├───drake_example.Rproj
├───input.R             # definition of input file paths or analysis parameters
├───interactive.R       # example commands for interactive session
├───R/
│   ├───dependencies.R  # libraries required in environment
│   ├───functions.R     # functions used in the workflow
│   ├───packages.R      # libraries loaded 
│   └───plan.R          # definition of workflow or plan
├───README.md
├───report.Rmd          # markdown file rendered as part of the workflow
└───run.R               # execute to run entire workflow
```

### Executing the workflow

Run `run.R` to run the workflow defined in `plan.R` including rendering a markdown report with the results. The following files are produced:

```
drake_example/
├───.drake/             # contains intermediate data files from workflow
└───output/
    └───report.html     # results report
```

### Adding to the workflow

Add or modify analyses steps in the drake plan defined in `R/plan.R`. Custom functions needed for the analysis are defined in `R/functions.R`

## Outlook

- Implement unit testing strategy - e.g. with [testthat](https://testthat.r-lib.org/)
- Parallel computing with `drake` - [drake HPC guide](https://books.ropensci.org/drake/hpc.html)
- Containerize - [drake-gitlab-docker example](https://gitlab.com/ecohealthalliance/drake-gitlab-docker-example)
- Option to provide arguments to `run.R` instead of using `input.R`

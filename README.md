# Example R project using renv and drake

This R project example using renv and drake is based on...

[Introduction to renv by Kevin Ushey](https://rstudio.github.io/renv/articles/renv.html)

https://github.com/wlandau/drake-example


## Installation requirements

- R (test with version 4.0.3)
- RStudio

### Required R packages

Install `renv`. 

```{r}
install.packages("renv")
```
## Setting up the package environment

A brief overview of commands is given below. See [this introduction to the renv workflow](https://rstudio.github.io/renv/articles/renv.html#workflow-1) for more detail.

```{r}
renv::init()      # initialize the project package environment, create lockfile
renv::snapshot()  # save current state of library to lockfile `renv.lock`
renv::restore()   # restore environment from lockfile
```

## Executing the workflow

This project uses drake. Run `make_analysis.R` to run the pipeline and render a markdown report with the results.


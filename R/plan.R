################################################################################
## Title:         plan.R
## Description:   Definition of analysis workflow using drake
## Input:
## Ouput:
## Author: 
## Date created: 
## Copyright
## Email: 
################################################################################
## Notes:
## 
################################################################################

plan <- drake::drake_plan(

  # check if output directory exists
  outdir = check_dir(outdir_path),

  # Render markdown report
  report = rmarkdown::render(
    knitr_in("report.Rmd"),
    output_file = file.path(
      outdir, paste0("report.html")),
    quiet = TRUE
  ),

  trace = TRUE
)

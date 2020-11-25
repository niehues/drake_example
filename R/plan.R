################################################################################
## Title:         plan.R
## Description:   Definition of analysis workflow using drake
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

  # get some data to work with as an example
  data = target(
    create_data(),
    transform = map(id_value = !!factors, .id = id_value)
  ),
  
  # do a calculation on both generated data sets
  processed = target(
    multiply_values(data, id_value),
    transform = map(data, id_value, .id = id_value)
  ),
  
  # split data into smaller slices
  slice = target(
    drake_slice(processed, slices = 2, index = idx),
    transform = cross(processed, 
                      idx = !!seq_len(2), 
                      .id = c(id_value, idx))
  ),
  
  # process slices
  processed_again = target(
    multiply_values(slice, id_value),
    transform = map(slice, id_value, .id = c(id_value, idx))
  ),
  
  # combine processed slices back together
  merged = target(
    dplyr::bind_rows(processed_again),
    transform = combine(processed_again, .by = c(id_value))
  ),
  
  # single list with results
  results = target(
    list(merged),
    transform = combine(merged)
  ),
  
  # Render markdown report
  report = rmarkdown::render(
    knitr_in("report.Rmd"),
    output_file = file.path(
      outdir, paste0("report.html")),
    quiet = TRUE
  ),

  trace = TRUE
)

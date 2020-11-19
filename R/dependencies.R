################################################################################
## Title:         dependencies.R
## Description:   R project dependencies
## Author: 
## Date created:   
## Email: 
################################################################################
## Notes:         The libraries listed in this file are recognized by `renv` as 
##                dependencies and will be installed in the project environment
##                when running `renv::init()`. They are not loaded when 
##                executing the workflow using `drake::r_make()`.
################################################################################
require(rmarkdown)
require(knitr)
require(callr)
require(visNetwork) # for visualizing drake workflow graph
require(lubridate)

################################################################################
## Title:         _drake.R
## Description:   This file is required when by executing workflow using
##                `drake::r_make()``
## Author: 
## Date created: 
## Copyright
## Email: 
################################################################################
## Notes:
## 
################################################################################
source("R/packages.R")
source("R/functions.R")
source("input.R")
source("R/plan.R")

# configure drake with plan
config <- drake::drake_config(
  plan
)




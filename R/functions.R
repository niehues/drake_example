################################################################################
## Title:         functions.R
## Description:   Definition of functions called in analysis plan
## Author: 
## Date created: 
## Copyright
## Email: 
################################################################################
## Notes:
##
################################################################################

#' Check if directory exists and create it if necessary.
#'
#' @param directory Path to directory.
#' @return Path to directory.
check_dir <- function(directory) {
  if (!dir.exists(directory)) {
    dir.create(directory)
  }
  return(directory)
}
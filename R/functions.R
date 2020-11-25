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


#' Create some data
create_data <- function() {
  data <- as.data.frame(matrix(1:8, nrow = 2))
  return(data)
}

#' Example function for processing data
#' 
#' @param data A matrix.
#' @param value Number
#' @return Processed matrix
multiply_values <- function(data, value) {
  data <- data*value
  return(data)
}
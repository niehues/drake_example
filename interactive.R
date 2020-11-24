################################################################################
## Title:         interactive.R
## Description:   Commands for running workflow in interactive session
## Author: 
## Date created: 
## Copyright
## Email: 
################################################################################
## Notes:
## These commands are demonstrated at
## https://github.com/wlandau/drake-example/blob/main/main/interactive.R
################################################################################
library(drake)
r_outdated() # list outdated analysis steps
r_make() # run drake plan
r_outdated()
r_vis_drake_graph()


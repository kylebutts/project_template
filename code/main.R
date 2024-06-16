#' # Main script to run the complete project
#' 
#' `render_file` will run the R file and log the results of the script 
#' in the `logbook`. The logbook can be viewed with 
#' `quarto preview logbook` from the terminal.
library(here)
source(here("logbook/render_file.R"))

# Render files if needed
# 1 && render_file(here("file.R"))



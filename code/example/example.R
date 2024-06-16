#' ---
#' title: "Main analysis script"
#' ---
#' This is an example script that will be run by `render_file` and logged in 
#' the logbook.

# %% 
#| message: false
#| warning: false
library(tidyverse, warn.conflicts = FALSE)
library(fixest)

#' ## Plots
# %% 
plot(mtcars$mpg, mtcars$hp)

#' ## Tables
# %% 
knitr::kable(
  mtcars[1:5, ], 
  caption = "A knitr kable."
)

#' ## Regression
# %%
est = feols(mpg ~ hp | cyl, mtcars)
esttable(est)


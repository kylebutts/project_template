#' ---
#' title: "Main analysis script"
#' ---
#' This is an example script that will be run by `render_file` and logged in 
#' the logbook. This is based on `knitr::spin()` to let us do basic 
#' literate programming in `.R` scripts.

# %% 
#| message: false
#| warning: false
library(tidyverse, warn.conflicts = FALSE)
library(fixest)
library(tinytable)

# Code chunks ----
# %% 
mean(rnorm(1000))

# Plots ----
# %% 
plot(mtcars$mpg, mtcars$hp)

# Tables ----
# %% 
tinytable::tt(
  mtcars[1:5, ], 
  caption = "First five rows of `mtcars`"
)

# Regression ----
# %%
est = feols(mpg ~ hp | cyl, mtcars)
esttable(est)

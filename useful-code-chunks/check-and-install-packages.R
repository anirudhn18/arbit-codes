# Load necessary packages - install packages if necessary.

required_packages = c( 
  # Add to this list the packages that you will use - if unavailable, it will be 
  # automatically installed
  "readr",
  "dplyr",
  "tidyr",
  "ggplot2",
  "zoo",
  "data.table",
  "h2o",
  "lubridate"
)



packages_to_install = required_packages[!(required_packages %in% installed.packages()[, 1])]

if (length(packages_to_install) > 0) {
  install.packages(packages_to_install)
}

suppressPackageStartupMessages({
  sapply(required_packages, require, character.only = TRUE)
})

rm(required_packages, packages_to_install)
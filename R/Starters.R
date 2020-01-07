packages <- c("devtools", "pkgdown", "roxyden2", "testthat", "usethis")

install.lib<-packages[!packages %in% installed.packages()]
for(lib in install.lib) install.packages(lib,dependencies=TRUE)
sapply(packages,require,character=TRUE)

R.home() ## find default R package library path

.libPaths() ## find other options for library paths

R.version ## find out your r version

## write a simple little package - do this outside of the r project

setwd("/Users/laurabraunholtz/Documents/University/PhD/Training")

usethis::create_package("mylilpackage")

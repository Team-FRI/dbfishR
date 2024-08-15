# dbfishR

![R](https://img.shields.io/badge/R-4.0.x-blue)
![CC0 license](https://img.shields.io/badge/License-CC0-green.svg)

dbfishR: Programmatic access to fish and stream data from university partners of the PA Unassessed Waters Initiative.

inspired by

* https://doi.org/10.1111/2041-210X.14226
* https://doi.org/10.5281/zenodo.4607742
* https://github.com/walkerke/tigris

# Installation

* Latest development version from GitHub

```{r}
pkgs <- installed.packages()
if (!('devtools' %in% pkgs)) { install.packages('devtools') }
if ('dbfishR' %in% pkgs) { remove.packages('dbfishR') }

devtools::install_github(repo = 'Team-FRI/dbfishR', upgrade = 'never')
```

# Use

Basic retrieval looks like this

```{r}
library(dbfishR)
View(get_sites())
```

For examples please refer to the vignettes included in the package

- [x] FRI data entry SOP
- [x] Visualizing fish and external data
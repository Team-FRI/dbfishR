# dbfishR

![R](https://img.shields.io/badge/R-4.0.x-blue)
![CC0 license](https://img.shields.io/badge/License-CC0-green.svg)

Programmatic access to the [Freshwater Research Institute’s](https://www.susqu.edu/academics/centers-and-programs/freshwater-research-institute/) Fish and Amphibian database.


inspired by 
https://doi.org/10.1111/2041-210X.14226
https://doi.org/10.5281/zenodo.4607742
https://github.com/walkerke/tigris

# Installation

* Current version (from CRAN)

None yet.

* Latest development version from GitHub

```{r}
pkgs <- installed.packages()
if (!('devtools' %in% pkgs)) { install.packages('devtools') }
if ('dbfishR' %in% pkgs) { remove.packages('dbfishR') }

devtools::install_github(repo = 'markanewman/dbfishR', upgrade = 'never')
```



**This currently includes**:

- [x] An empty database ([CompleteDataEntry-Template](https://github.com/Team-FRI/UW-Data-Entry/releases/tag/V1))
- [x] An example database from SU samples ([ExampleData](https://github.com/Team-FRI/UW-Data-Entry/releases/tag/V1))
- [ ] A ReadMe folder (placeholder for now, updates to come)
- [ ] Code and quality control output folders that we are in-process of updating
- [x] The code folder has a generalized script for reading DB tables and one for quality control outputs
- [ ] QC outputs are setup to save directly to the QC_outputs/Static_Archive folder

**How to contribute**:

1. Download the template called [CompleteDataEntry-Template.accdb](https://github.com/Team-FRI/UW-Data-Entry/releases/tag/V1) 
2. Enter all your information
3. Open an [Issue](https://github.com/Team-FRI/UW-Data-Entry/issues/new), attaching your template DB.
4. We will run the _~/code/ImportQC.rmd_ file to validate the date is in the correct format.
5. If it is, we will merge the data into the Master database called [ExampleData.accdb](https://github.com/Team-FRI/UW-Data-Entry/releases/tag/V1) 

**More to come and suggestions welcome!**

Current projects include:

- [ ] Trendline-based outlier detection rather than k-means
- [ ] More summary and exploration for abiotic and meta data

# rgmrfilm

A package to process output from GMRFILM models with R

**Warning** This is a work in progress and is **not ready for use.**

## How to install and use

1. Install R for your operating system from
[here](http://cran.revolutionanalytics.com/). **Note**: if you are
running Windows, install the **Rtools** that let you build packages.
You will want the Rtools binaries in your path. On systems where I have
admin rights, I create `C:\Apps`, make it writable for all users, and
install **R** and **Rtools** in a `C:\Apps\R` folder. You want the
Rtools binaries in your path and this keeps the path shorter. If you
do not have admin rights, make an ``Apps`` folder in your home folder
and install there...

2. Install the `git` version control software for your operating
system from [here](https://git-scm.com/). It works well with
RStudio (below).

3. Install R-Studio from 
[here](https://www.rstudio.com/products/rstudio/download/preview/).
The preview releases are the most up-to-date versions. It is a great
development environment and will make your life a lot easier...


4. Install the `devtools` package and the dependencies
from the R terminal in RStudio. 

```
install.packages("devtools", dependencies=TRUE)
install.packages("ggplot2", dependencies=TRUE)
```

Then you can use the `devtools` package to install `rgmrfilm`. 

```
devtools::install_github("jrminter/rgmrfilm")
```

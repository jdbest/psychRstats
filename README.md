# psychRstats

This is an R package based on Bard College's Statistics for Psychology (PSY 203, Fall 2020), taught by Assistant Professor of Psychology Justin Dainer-Best. It is intended to be used alongside an undergraduate course in statistics, or an understanding of statistics based on such a course. 

Installing the package (see below) will download vignettes and exercises which build on one another to develop skills while also exploring basic statistical concepts like _t_-tests, ANOVA, and null-hypothesis statistical testing. 

The primary website for that course was <https://faculty.bard.edu/~jdainerbest/psy-203> with all labs being listed on [the lab website](https://faculty.bard.edu/~jdainerbest/psy-203/labslist.html); the labs as used in the course are available at <https://github.com/jdbest/psy-203/>. This repository takes the `{learnr}` tutorials which were the basis of those labs and deploys them as package vignettes, meaning that you can use *this page* and the included [website](https://jdbest.github.io/r-psych-stats) (<https://jdbest.github.io/r-psych-stats/>) for all exercises. 

## Installation

For information on installing R and RStudio, visit the website.

In R, you can install this package directly from github:

```
# install devtools for the following function, if needed
install.packages("devtools")
devtools::install_github("jdbest/r-psych-stats")
```

However, this is **not yet ready for use**.

## Running tutorials

Once installed, tutorials can be used to learn basic concepts. The basic syntax is as follows:

```
library(psychRstats)
lab("intro-to-r")
```
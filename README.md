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
library(psychRstats)
```

If you're prompted to update packages, you should respond as prompted -- usually with a number (e.g., typing a 1 and then hitting enter). Alternatively, leave the line blank for "don't update."

## Running tutorials

Once installed, tutorials can be used to learn basic concepts. The basic syntax is as follows:

```
library(psychRstats)
lab("intro-to-r")
```

Once you've gotten through the first tutorial, you'll want to download the exercises as well. 

## Downloading exercises

Download all exercises and data in one go when you first get started. After running the above code and installing the `{psychRstats}` package, make sure you're in the right working directory.

(We discuss setting a working directory [in the first lab](https://jdbest.github.io/r-psych-stats/exercises/01-intro-to-r/#set-a-working-directory), but there's also an entry about it [on the wiki](https://github.com/jdbest/r-psych-stats/wiki/setting-a-working-directory).)

```
usethis::use_zip("https://github.com/jdbest/r-psych-stats/raw/main/exercises.zip", cleanup = TRUE)
```
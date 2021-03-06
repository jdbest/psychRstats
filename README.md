# psychRstats

This is an R package based on Bard College's Statistics for Psychology (PSY 203, Fall 2020), taught by Assistant Professor of Psychology Justin Dainer-Best. It has tutorials and exercises to be used alongside an undergraduate course in statistics. (If you are familiar with statistical concepts and want to learn to perform such tests in R, it may be appropriate.)

Installing the package (see below) will download vignettes and exercises which build on one another to develop skills while also exploring basic statistical concepts like _t_-tests, ANOVA, and null-hypothesis statistical testing. (While there are many good arguments against NHST, I do not go into them in these tutorials.)

The primary website for that course was <https://faculty.bard.edu/~jdainerbest/psy-203/> with all labs being listed on [the lab website](https://faculty.bard.edu/~jdainerbest/psy-203/labslist.html); the labs as used in the course are available at <https://github.com/jdbest/psy-203/>. This repository takes the `{learnr}` tutorials which were the basis of those labs and deploys them as package vignettes, meaning that you can use *this page* and the included website (<https://jdbest.github.io/psychRstats/>) for all exercises. 

## Installation

For information on installing R and RStudio, visit the website.

In R, you can install this package directly from github:

```
# install devtools for the following function, if needed
install.packages("devtools")
devtools::install_github("jdbest/psychRstats")
library(psychRstats)
```

If you're prompted to update packages, you should respond as prompted -- usually with a number (e.g., typing a 1 and then hitting enter). Alternatively, leave the line blank for "don't update."

## Running tutorials

Once installed, tutorials can be used to learn basic concepts. The basic syntax is as follows:

```
psychRstats::lab("01-intro-to-r")
```

Once you've gotten through the first tutorial, you'll want to download the exercises as well. 

## Downloading exercises

Download all exercises and data in one go when you first get started. After running the above code and installing the `{psychRstats}` package, make sure you're in the right working directory.

(We discuss setting a working directory [in the first lab](https://jdbest.github.io/psychRstats/labs/01-intro-to-r/#set-a-working-directory), but there's also an entry about it [on the wiki](https://github.com/jdbest/psychRstats/wiki/setting-a-working-directory).)

```
psychRstats::download_exercises()
```

## Get started

I recommend following the [labs in order](https://jdbest.github.io/psychRstats/labs.html). Following along through the web may be helpful for most individuals. (For example, there is no tutorial in labs 2 or 5.)
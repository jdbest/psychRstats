#' psychRstats: College-Level Intro Stats Exercises in R
#'
#' Based on Bard College's Statistics for Psychology (PSY 203, Fall
#' 2020, taught by Assistant Professor of Psychology Justin 
#' Dainer-Best), these vignettes and exercises are intended to 
#' be used alongside an undergraduate course in statistics, or 
#' an understanding of statistics based on such a course. 
#' It includes a series of vignettes and exercises which build on 
#' one another to develop skills while also exploring basic 
#' statistical concepts like the t-test, ANOVA, or null-hypothesis 
#' statistical testing. 
#'
#' @section psychRstats functions:
#' There are two functions. The first, \code{\link{lab}},
#' will run a tutorial. It is just a mask of 
#' \code{learnr::run_tutorial()} with the package defaulting to 
#' this one.
#' 
#' The second function is \code{\link{run_exercise}},
#' which will open an R Markdown exercise from this package for 
#' editing, assuming you are in the current working directory.
#' 
#' For more information, look at the main github site,
#' \url{https://github.com/jdbest/r-psych-stats/}
#'
#' @docType package
#' @name psychRstats
NULL




# --------------------------------------------------------------
#' Load a tutorial from the psychRstats package using packages
#' \code{learnr} and, where appropriate, \code{gradethis}.
#' 
#' @param name The name of the tutorial, in quotation marks. 
#'   A full list of tutorials can be found by running 
#'   \code{\link{list_tutorials}}
#' 
#' @examples 
#' \dontrun{
#' lab("intro-to-r")
#' }
#' 
#' @export
lab <- function(name) {
  if(missing(name)) stop("You must choose a lab to run, e.g., lab(\"intro-to-r\"). \nRun the function list_tutorials() if you would like a list of all possible psychRstats tutorials.\n")
  if(! is.character(name) & ! is.numeric(name)) stop("The lab tutorial name must be a character/string vector, e.g., lab(\"intro-to-r\"), or a number, e.g., lab(1). \n")
  if(is.character(name)) name <- tolower(name)
  if(is.numeric(name)) 
  learnr::run_tutorial(name, package = "psychRstats")
}


#-------------------------------------------------------------- 
#' Open an exercise for editing from the psychRstats package 
#' using the package \code{usethis}. Will try running 
#' \link{\code{usethis::edit_file}} based on the current 
#' working directory.
#' 
#' @param exercise The name or number of the exercise, e.g., 
#'   \code{run_exercise(3)} or \code{run_exercise("03-visualizing")}
#' 
#' @examples
#' 
run_exercise <- function(exercise) {
  
}



#-----------------------------------------------------

list_tutorials <- function() {
  
}
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
#' There is only one added function, \code{\link{lab}}, which
#' will run a tutorial. It is just a mask of 
#' \code{learnr::run_tutorial()} with the package defaulting to 
#' this one.
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
#'   A full list of tutorials can be found by running.
#' @examples 
#' \dontrun{
#' lab("intro-to-r")
#' }
#' 
#' @export
lab <- function(name) {
  if(missing(name)) stop("You must choose a lab to run, e.g., lab(\"intro-to-r\")")
  if(! is.character(name)) stop("The lab tutorial name must be a character/string vector, e.g., lab(\"intro-to-r\")")
  name <- tolower(name)
  learnr::run_tutorial(name, package = "psychRstats")
}
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
  if(is.numeric(name)) name <- tutorials[tutorials$number == name,]$name
  learnr::run_tutorial(name, package = "psychRstats")
}


#-------------------------------------------------------------- 
#' Open an exercise for editing from the psychRstats package
#' 
#' Using the utils function \code{\link[utils]{file.edit}}, 
#' will open the file for 
#' editing based on the current working directory. 
#' Please note that if the file does not already exist, it 
#' will not be created; an error will be returned. In this case, 
#' you should search your computer for the correct directory, 
#' and consider changing R's working directory.
#' 
#' @param exercise The name or number of the exercise, e.g., 
#'   \code{run_exercise(3)} or \code{run_exercise("03-visualizing")}
#' @param dir The folder/directory to look for the exercise. Defaults
#'   to your current working directory.
#' 
#' @examples
#' \dontrun{
#' run_exercise("03-visualizing")
#' run_exercise(2)
#' }
#' 
#' @export
run_exercise <- function(exercise, dir) {
  if(missing(dir)) dir <- getwd()
  if(missing(exercise)) stop("You must choose an exercise to open, e.g., run_exercise(\"02-lab\"). \nRefer to the website if you have questions.\n")
  if(! is.character(exercise) & ! is.numeric(exercise)) stop("The lab exercise name must be a character/string vector, e.g., run_exercise(\"02-lab\"), or a number, e.g., run_exercise(2). \n")
  if(is.character(exercise)) exercise <- base::tolower(exercise)
  if(is.numeric(exercise)) exercise <- exercises[exercises$number == exercise,]$name
  path <- base::file.path(
    dir, exercise, paste0(exercise, ".Rmd")
    )
  
  # code amended from usethis::edit_file() to either open file in
  # R Studio or to use file.edit() to open it
  if (rstudioapi::isAvailable() && 
      rstudioapi::hasFun("navigateToFile")) {
    rstudioapi::navigateToFile(path)
  } else {
    utils::file.edit(path)
  }
  invisible(path)
}



#-----------------------------------------------------
#' Print all available tutorials in the psychRstats package.
#' 
#' Include no arguments to print them all. You may pass an argument
#' to the print function, e.g., \code{list_tutorials(n = 2)} to 
#' limit the number of responses.
#' 
#' @param n How many rows to print.
#' 
#' @examples 
#' list_tutorials()
#' 
#' @export
list_tutorials <- function(n = NULL) {
  if(!is.null(n)) n <- n*2 # because print max is based on number
  # of entries, not number of rows...
  print(tutorials, max = n)
}
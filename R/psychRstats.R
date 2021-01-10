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
#' lab(1)
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
#'   \code{run_exercise(3)} or \code{run_exercise("03-exercise")}
#' @param dir The folder/directory to look for the exercise. Defaults
#'   to your current working directory.
#' 
#' @examples
#' \dontrun{
#' run_exercise("03-exercise")
#' run_exercise(3)
#' }
#' 
#' @export
run_exercise <- function(exercise, dir) {
  if(missing(dir)) path <- getwd() else path <- file.path(dir)
  if(missing(exercise)) stop("You must choose an exercise to open, e.g., run_exercise(\"02-exercise\"). \nRefer to the website if you have questions.\n")
  if(! is.character(exercise) & ! is.numeric(exercise)) stop("The lab exercise name must be a character/string vector, e.g., run_exercise(\"02-exercise\"), or a number, e.g., run_exercise(2). \n")
  if(is.character(exercise)) {
    exercise <- base::tolower(exercise)
    if(grepl(pattern = ".rmd", x = exercise)) { # remove rmd if kept
      exercise <- unlist(strsplit(exercise, split = "\\."))[1]
    }
  }
  if(is.numeric(exercise)) {
    exercise <- exercises[exercises$number == exercise,]$name
  }
  # add exercises folder if missing
  if(file.exists(file.path(path, "exercises"))) {
    path <- file.path(path, "exercises")
  }
  # add folder for current exercise
  path <- file.path(path, exercise)
  if(!file.exists(path)) {
    message <- paste0("The directory indicated, ",
                     path, "/ doesn't exist.\n")
    stop(message)
  }
  # add filename
  path <- file.path(path, paste0(exercise, ".Rmd"))
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


#-----------------------------------------------------
#' Download exercises for psychRstats
#' 
#' Wraps around the \code{\link[usethis]{use_zip}} function
#' to download the exercises. First checks whether the directory 
#' already exists. If you'd like to overwrite an existing directory,
#' you must use \code{force = TRUE}.
#' 
#' @param dir The directory defaults to your current working 
#'   directory, but can be set otherwise. 
#' @param force Whether to overwrite other folders if they exist
#'   -- defaults to FALSE, but can overwrite by being set to TRUE.
#' 
#' @examples 
#' \dontrun{
#' download_exercises()
#' download_exercises("~/Downloads/")
#' download_exercises(dir = "~/Downloads/", force = TRUE)
#' }
#' @export
download_exercises <- function(dir, force = FALSE) {
  if(missing(dir)) path <- getwd() else path <- file.path(dir)
  if(!file.exists(path)) {
    message <- paste("The directory indicated,",
                     path, "doesn't exist.\n")
    stop(message)
  }
  if(file.exists(file.path(path, "exercises")) & ! force) {
    message <- paste("There is already an exercises folder in the",
                     "directory ", path, 
                     "-- are you sure you want to overwrite?",
                     "If so, re-run with force = TRUE.\n")
    stop(message)
  }
  usethis::use_zip("https://github.com/jdbest/r-psych-stats/raw/main/exercises.zip", cleanup = TRUE, destdir = path)
}
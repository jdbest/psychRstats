library(tibble)
tutorials <- as.data.frame(tribble(
  ~number, ~name, 
  1, "01-intro-to-r", 
  2, "01-intro-to-r",
  3, "03-visualizing", 
  4, "04-hypothesis-testing",
  5, "05-single-sample-t",
  6, "06-visualizing-2",
  7, "07-t-tests",
  8, "08-one-way-anova",
  9, "09-regression-correlation",
  10, "10-chi-square-factorial-ANOVA",
  11, "11-questions-and-knitting"
))

exercises <- as.data.frame(tribble(
  ~number, ~name,
  1, "02-exercise",
  2, "02-exercise",
  3, "03-exercise",
  4, "04-exercise",
  5, "05-exercise",
  6, "06-exercise",
  7, "07-exercise",
  8, "08-exercise",
  9, "09-exercise",
  10, "10-exercise",
  11, "11-exercise",
  12, "12-test-yourself-I"
))

# change overwrite to TRUE to save over it

usethis::use_data(tutorials, exercises, 
                  internal = TRUE, overwrite = FALSE)

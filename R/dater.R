# This is my function named 'dater', it's a shorthand for creating a string of the
# date, so you can use it in naming an output file (.csv, .xlsx, or whatever)
# to make it easy to structure output files and dirs.

#'@param ts A timestamp as produced by Sys.Date() or lubridate::today()
#'
#'@return A string of the timestamp with formatting yyyymmdd
#'
#'@export
#'
#'@examples
#' dater(Sys.Date())

dater <- function(ts) {

  stringr::str_remove_all(ts, "\\-")

}

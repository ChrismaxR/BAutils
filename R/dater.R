# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

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

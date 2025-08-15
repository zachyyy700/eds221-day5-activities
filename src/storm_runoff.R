##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                                                            ~~
##                              DAY 5 ACTIVITIES                            ----
##                                                                            ~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library(roxygen2)
# create runoff function
#' Calculate the volume of stormwater runoff expected for a watershed
#'
#' @param imp_frac impervious fraction: a unitless number, 0-1, the fraction of watershed considered impervious
#' @param area watershed area in acres
#'
#' @returns a number indicating the volume of stormwater runoff for a watershed
#' @export
#'
#' @examples
predict_runoff <- function(imp_frac, area) {
  rv <- 0.05 + 0.9 * imp_frac
  V <- 3630 * 1 * rv * area # 1 is Rd, set as a constant of 1
  return(V)
}

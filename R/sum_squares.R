#' Calculate sum squares for a sample
#'
#'Calculates the sum of squared deviations from mean, SS(x) of a numeric vector
#'
#' @param vect numeric vector
#'
#' @return number
#' @export
#'
#' @examples
#' sum_squares(rnorm(50))
sum_squares <- function(vect){
  sum((vect - mean(vect))^2)
}

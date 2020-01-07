#' Calculate standard error of Large sample
#'
#' @param vect numerical vector
#' @importFrom stats sd
#'
#' @return standard error
#' @export
#'
#' @examples
#' st_error(rnorm(50))
st_error <- function(vect){
  sd(vect)/sqrt(length(vect))
}

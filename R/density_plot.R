#' Density plot function
#'
#' @param vect numerical vector
#'
#' @return density plot
#'
#' @importFrom ggplot2 ggplot aes geom_density
#' @importFrom magrittr %>%
#' @export
#'
#' @examples
density_plot <- function(vect) {
  stopifnot(is.numeric(vect))

  data.frame(values = vect) %>%
    ggplot(aes(x = values)) +
    geom_density()
}

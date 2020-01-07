#' Density plot function
#'
#' @param v numerical vector
#'
#' @return density plot
#'
#' @importFrom ggplot2 ggplot aes geom_density
#' @importFrom magrittr %>%
#' @export
#'
#' @examples
density_plot <- function(v) {
  stopifnot(is.numeric(v))

  data.frame(values = v) %>%
    ggplot(aes(x = values)) +
    geom_density()
}

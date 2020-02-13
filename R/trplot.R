#' @title trplot
#'
#' @export
#'
#' @description The "trplot" function shows how the crime rate is positively correlated to the Trump voters.
#' while the points are the more darker, the more we move to the right, which means the higher number of Trump voters among lower income households.
#'
#' @return The output shows a graph built using the "ggplot2 package"
#'
#' @author Elisa Boccini \email{elisa.boccini@gmail.com}
#'
#'
#'
#'
#'
trplot <- function() {
  ggplot2::ggplot(data=ProjectTrial::hatecrime,
                  ggplot2::aes(x=ProjectTrial::hatecrime$share_voters_voted_trump, y=ProjectTrial::hatecrime$hate_crimes_per_100k_splc, col=ProjectTrial::hatecrime$median_household_income)) +
    ggplot2::geom_abline() +
    ggplot2::geom_point()

}

#trplot()

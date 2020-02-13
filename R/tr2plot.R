#' @title tr2plot
#'
#' @author Elisa Boccini \email{elisa.boccini@gmail.com}
#'
#' @export
#'
#' @return The output shows a graph built using the "ggplot2 package"
#'
#'
tr2plot <- function (){
  ggplot2::ggplot(data=ProjectTrial::hatecrime ,
                  ggplot2::aes(x=ProjectTrial::hatecrime$gini_index, y=ProjectTrial::hatecrime$hate_crimes_per_100k_splc)) +
    ggplot2::geom_abline() +
    ggplot2::geom_point()

}
#tr2plot()

#' multiple regression
#'
#' @export
#'
#' @importFrom stats lm
#'
#' @return this function returns the multiple regression between all variables
#'
mregress_crime <- function(){
  m1 <- lm(ProjectTrial::hatecrime$hate_crimes_per_100k_splc ~ ProjectTrial::hatecrime$median_household_income + ProjectTrial::hatecrime$share_unemployed_seasonal + ProjectTrial::hatecrime$share_population_in_metro_areas + ProjectTrial::hatecrime$share_population_with_high_school_degree + ProjectTrial::hatecrime$share_non_citizen + ProjectTrial::hatecrime$share_white_poverty + ProjectTrial::hatecrime$share_non_white + ProjectTrial::hatecrime$share_voters_voted_trump , data = ProjectTrial::hatecrime)
  summary(m1)
}
#mregress_crime()

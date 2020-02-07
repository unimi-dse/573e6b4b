#' analyze correlation data

#' @export
#'

corrtrump <- function(){
  pairs(trumpn)
  correlation <- cor(trumpn)
  print(correlation)
}


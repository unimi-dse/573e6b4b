#analyze correlation data

corrtrump <- function(){
  usethis::use_data(trumpn,overwrite = TRUE)
  pairs(trumpn)
  correlation <- cor(trumpn)
  print(correlation)
}
corrtrump()

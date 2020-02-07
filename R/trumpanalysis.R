trumpanalysis <- function(){
  usethis::use_data(trump, overwrite = TRUE)
  str(trump)
  head(trump)
  summary(trump)
}
trumpanalysis()







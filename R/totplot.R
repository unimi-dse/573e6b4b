#plot

totplot<-function(){
  usethis::use_data(trumpn, overwrite = TRUE)
  plot(trumpn)
}
totplot()



trumpdata <- function(){
  trump <- read.csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/hate-crimes/hate_crimes.csv", sep = ",")
  save(trump, file = "C:/Users/elisa/Documents/GitHub/573e6b4b/ProjectTrial/Data/trump.rda")
  load("~/GitHub/573e6b4b/ProjectTrial/Data/trump.rda")
}
trumpdata()

#callthis as a function
newtrumpdata <- function(){
  trump$median_household_income <- as.numeric(trump$median_household_income)
  trump$share_unemployed_seasonal <- as.numeric(trump$share_unemployed_seasonal)
  trump$share_population_in_metro_areas <- as.numeric(trump$share_population_in_metro_areas)
  trump$share_population_with_high_school_degree <- as.numeric(trump$share_population_with_high_school_degree)
  trump$share_non_citizen <- as.numeric(trump$share_non_citizen)
  trump$share_white_poverty <- as.numeric(trump$share_white_poverty)
  trump$gini_index <- as.numeric(trump$gini_index)
  trump$share_non_white <- as.numeric(trump$share_non_white)
  trump$share_voters_voted_trump <- as.numeric(trump$share_voters_voted_trump)
  trump$hate_crimes_per_100k_splc <- as.numeric(trump$hate_crimes_per_100k_splc)
  trump$avg_hatecrimes_per_100k_fbi <- as.numeric(trump$avg_hatecrimes_per_100k_fbi)
}
newtrumpdata()

trumpanalysis <- function(){
  str(trump)
  head(trump)
  summary(trump)
}
trumpanalysis()

whitepovertytrump <- function(){
  require(tidyverse)
  ggplot(trump, aes(x=share_white_poverty, y=share_voters_voted_trump)) + geom_point() + geom_jitter() + geom_smooth(method = 'lm')
}
whitepovertytrump()

trumpwhitepoverty <- function(){
  require(tidyverse)
  ggplot(trump, aes(x=share_voters_voted_trump, y=share_white_poverty)) + geom_point() + geom_jitter() + geom_smooth(method = 'lm')
}
trumpwhitepoverty()

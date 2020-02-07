usethis::use_data(trump, overwrite = TRUE)

trumpanalysis <- function(){
  str(trump)
  head(trump)
  summary(trump)
}
trumpanalysis()

#analyze data
trumpn <- trump[-1]
pairs(trumpn)
correlation <- cor(trumpn)
print(correlation)



#multiple regression
mregress_trump <- function(){
  y <- trump$hate_crimes_per_100k_splc
  x1 <- trump$median_household_income
  x2 <- trump$share_unemployed_seasonal
  x3 <- trump$share_population_in_metro_areas
  x4 <- trump$share_population_with_high_school_degree
  x5 <- trump$share_non_citizen
  x6 <- trump$share_white_poverty
  x7 <- trump$share_non_white
  x8 <- trump$share_voters_voted_trump
  m1 <- lm(y ~ x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8, data = trumpn)
  summary(m1)
}
mregress_trump()

#plot

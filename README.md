# CrimeAnalysis

This package provides an analysis of the relationsip between rate of crimes in USA and many other variables. Its functions allows the user to look at the structure of the dataset, run a multiple regression on the variables and look at the graph for the main significant variables. 

## Installation

First install the R package "devtools" if not installed.

###### Install the package "ProjectTrial"

```R
devtools::install_github('unimi-dse/573e6b4b')
```

## Dataset

The package provides a dataset containing the data on key socioeconomic factors, for each USA state, including indicators for education (percent of adults 25 and older with at least a high school degree, as of 2009), diversity (percent nonwhite population and percent noncitizen population, 2015), geographic heterogeneity (percent population in metropolitan areas, 2015), economic health (median household income, 2016 seasonally adjusted unemployment, September 2016, percent poverty among white people. 2015, and income inequality as measured by the Gini index, 2015), and what percent of the population voted for Donald Trump. 
You can find the data at: "https://fivethirtyeight.com/features/higher-rates-of-hate-crimes-are-tied-to-income-inequality/"

###### Documentation 

It's possible to look at the information regarding the dataset typing the following command: 

```R
# dataset documentation
?ProjectTrial::hatecrime
```

## Usage

Firstly, after installing the packages, it's needed to require it to run the functions:

```R
# load the package
require(ProjectTrial)
```

### cranalysis

The function `cranalysis()` provides an initial examination of the dataset: it allows to see the the structure of the dataset by printing the first six States variables values and some descriptive statistics.

```R
cranalysis()
```


### mregress_crime

The function `mregress_crime()` provides a multiple regression on the variables, by using as dependent variable the rate of crime per 100,000 population.

```R
mregress_crime()
```


### trplot

The function `trplot()` provides a graph that shows the dependence between crime rate and the share of voters who voted for Donald Trump. The colour of each State is given by the median household income, with lighter colour for higher values.

```R
trplot()
```

### tr2plot

The function `tr2plot()` shows the relationship between crime rate and inequality. The former is the rate of crime per 100,000 population computed by Southern Poverty Law Center, the latter is the Gini Index computed in 2015 for each State.

```R
tr2plot()
```







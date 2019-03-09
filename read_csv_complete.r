# Data Visualization with ggplot
# Reading Datasets with read_csv


# This r file is generated from the course on linkedin called - Data visualisation in R with ggplot2.


# Condition to install the reqired packages if it is not already installed
if(!require(tidyverse)){
  install.packages("tidyverse")
  library(tidyverse)
}


# Read the college dataset
college <- read_csv('http://672258.youcanlearnit.net/college.csv')

# Take a look at the data
summary(college)

# Convert state, region, highest_degree, control, and gender to factors
college <- college %>%
  mutate(state=as.factor(state), region=as.factor(region),
         highest_degree=as.factor(highest_degree),
         control=as.factor(control), gender=as.factor(gender))

# Take a look at the data
summary(college)

# What's going on with loan_default_rate?
unique(college$loan_default_rate)

# Let's just force that to numeric and the "NULL" will convert to N/A
college <- college %>%
  mutate(loan_default_rate=as.numeric(loan_default_rate))

# Take a look at the data
summary(college)


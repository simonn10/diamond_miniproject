library(gdata)
library(tidyverse)

# 1) read in data

read.csv(file="/Users/ac-covid191/Desktop/mini/dataset_diamonds_NS.csv")
diamonds <- read.csv(file="/Users/ac-covid191/Desktop/mini/dataset_diamonds_NS.csv",stringsAsFactors = F)

# 2) add a column

diamonds <- diamonds %>% 
  mutate(Price_per_carat=price/carat) %>%   head()

# 3) descriptive statistics - visualization

hist(diamonds$carat)

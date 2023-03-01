

# this is a comment
# this file is my first R code for data science


library(tidyverse)

birdobs <- read_csv("C:\\Users\\growell\\HTLN-BreedingBird-Data-Package\\src\\birdobservations.csv")

spec(birdobs)

as_tibble(birdobs)

birdobs %>% 
  print(n = 10, width = Inf)

birdobs %>% 
  View()

  

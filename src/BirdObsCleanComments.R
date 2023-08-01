
library(tidyverse)
# library(data.table)

birdobs <- read_csv("src/BirdObservationsThru2022_3.csv")

glimpse(birdobs)



# just searching for stuff that starts with "W"

birdobs |>  
  select(Comments) |> 
  filter(str_detect(Comments, "^W"))


# try search for a special character "@"

birdobs |>  
  select(Comments) |> 
  filter(str_detect(Comments, "@"))

# try search for some patterns

birdobs |>  
  select(Comments) |> 
  filter(str_detect(Comments, "^a"))
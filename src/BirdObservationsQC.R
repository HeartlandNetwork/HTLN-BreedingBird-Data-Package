
library(tidyverse)
library(data.table)

birdobs <- read_csv("src/BirdObservationsThru2022_2.csv")

glimpse(birdobs)

# Variable: ParkUnit --------------------------------------------------------------

# Unique list - PASS

birdobs |> distinct(ParkUnit)

# bar chart looking at count by park unit - PASS

ParkUnit_factor <- factor(birdobs$ParkUnit)

ggplot(birdobs, aes(x = ParkUnit_factor)) + 
  geom_bar()

# Variable: 'Plot --------------------------------------------------------------

# Unique list - PASS

birdobs |> distinct(Plot) |> print(n = 843)

# Variable: EventID ------------------------------------------------------------

# Inspect an unique list - PASS

birdobs |> distinct(ParkUnit, EventID) |> print(n = 7066)

# Get sample sizes by ParkUnit - PASS

birdobs |> distinct(ParkUnit, EventID) |>  
  group_by(ParkUnit) |> summarize(n = n())

# Variable: EventDateTime ------------------------------------------------------

# Visually inspect unique list - PASS
# can only see last 1000 records

birdobs |> distinct(EventDateTime) |>
  arrange(EventDateTime) |> print(n = 6974)

# Count date-time values by park - these counts should be
# identical to the EvendIDs - PASS

birdobs |> distinct(ParkUnit, EventDateTime) |> 
  group_by(ParkUnit) |> summarize(n = n())













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




# Variable: Temperature_C ------------------------------------------------------

# test using histogram - PASS
# values between 0 and 10 degrees C
# at AGFO, EFMO and HOCU


typeof(birdobs$Temperature_C)

Temp <- birdobs |> filter(Temperature_C > -9999) |>
          select(Temperature_C)

# shows values less than 10 degrees.
ggplot(Temp, aes(x = Temperature_C)) + 
    geom_bar()

# which parks had lower temps??

low_temp_obs <- birdobs |> filter((Temperature_C > -9999 ) & (Temperature_C < 10))


view(low_temp_obs)

# low temps at AGFO, HOCU, and 

# Variable: WindSpeed and WindDesc ---------------------------------------------
# Run distinct on both variables - PASS

birdobs |> distinct(WindSpeed, WindDesc) 
birdobs |> group_by(WindSpeed) |> summarize(n = n())

# Variable: Rain ---------------------------------------------------------------
# Run distinct on Rain and counts -- PASS

birdobs |> distinct(Rain) 

birdobs |> group_by(Rain) |> summarize(n = n())


# Variable: PercentCloud -------------------------------------------------------
# Plot histogram - PASS

Cloud <- birdobs |> filter(PercentCloud > -9999) |>
  select(PercentCloud)

ggplot(Cloud, aes(x = PercentCloud)) + 
  geom_bar()


# Variable: Noise and Noise Summary --------------------------------------------
# Plot histogram - PASS










# Purpose - to parse the hierarchy string column of TSN values
# Then join them to a lookup table from ITIS_longnames


library(tidyverse)


TSNhierarchy <- read_csv(
  "C:\\Users\\growell\\HTLN-BreedingBird-Data-Package\\src\\Hierarchy_Taxa.csv")

TSNlongnames <- read_csv(
  "C:\\Users\\growell\\HTLN-BreedingBird-Data-Package\\src\\Itis_longnames.csv")

glimpse(TSNhierarchy)

glimpse(TSNlongnames)


# select the hierarchy string column 
# and parse the first 7 values in separate columns

hierarchy = as_tibble(TSNhierarchy)
longnames = as_tibble(TSNlongnames)


my_string <- hierarchy |>
       select(hierarchy_string )

my_string


my_columns <- my_string |> 
  separate_wider_delim(
    hierarchy_string,
    delim = "-",
    names = c("col1", "col2", "col3", "col4", 
              "col5", "col6", "col7", "col8", "col9"),
    too_many = "drop"
  )


my_columns

longnames

# convert all character to char to numeric
my_numbers <- my_columns %>% mutate_if(where(is.character), as.double)

my_columns

my_numbers


# Then set PK in longnames to be tsn

# Then process each column as an FK
# to get the value for complete name from longnames


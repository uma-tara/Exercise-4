# How many respondents were there in each state (STATEICP) that had a doctoral degree as their highest educational attainment (EDUC)? (Hint: Make this a column in a tibble.)

# Load necessary libraries
library(dplyr)
library(tidyverse)

# Load the data from the CSV file
data <- read_csv("/home/rstudio/sta304.exercise5/data/usa_data.csv")

# Filter the data for respondents with a doctoral degree (assuming EDUC code for doctoral degree is known, e.g., 'Doctoral')
# Replace 'Doctoral Code' with the actual code for doctoral degree in your dataset
doctoral_data <- data %>%
  filter(EDUC == 'Doctoral Code') %>%
  group_by(STATEICP) %>%
  summarise(Respondents = n())

# Display the result as a tibble
doctoral_data


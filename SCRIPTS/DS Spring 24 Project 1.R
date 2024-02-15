# Uploading Necessary Libraries
library(ggplot2)
library(readr)
library(dplyr)

# Saving the data under variable "df"
df <- read.csv('McDonals.csv')

# Creating a subset from original data that only contains McDonald's in New York.
ny_data <- df[df$state == "NY", ]

# Creating a histogram of ratings received by New York restaurants
ggplot(ny_data, aes(x = stars)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram for New York",
       x = "Ratings",
       y = "Frequency") + theme_bw()

# Creating a subset from original data that only contains McDonald's in California.
ca_data <- df[df$state == "CA", ]

# Creating a histogram of ratings received by California restaurants
ggplot(ca_data, aes(x = stars)) +
  geom_histogram(binwidth = 1, fill = "orange", color = "black", alpha = 0.7) +
  labs(title = "Histogram for California",
       x = "Ratings",
       y = "Frequency") + theme_bw()

# Creating a histogram of ratings for all the restaurants in original data.
ggplot(df, aes(x = stars)) +
  geom_histogram(binwidth = 1, fill = "red", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Ratings Received in USA",
       x = "Ratings",
       y = "Frequency") + theme_bw()

# Taking average of star ratings received by McDonalds restaurants
mean(df$stars)  # Mean of the original data
mean(ny_data$stars)  # Mean of New York locations
mean(ca_data$stars)  # Mean of California locations



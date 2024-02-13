library(ggplot2)
library(readr)
library(dplyr)


df <- read.csv('McDonals.csv')

view(df)

ny_data <- df[df$state == "NY", ]

ggplot(ny_data, aes(x = stars)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram for New York",
       x = "Ratings",
       y = "Frequency") + theme_bw()


ca_data <- df[df$state == "CA", ]

ggplot(ca_data, aes(x = stars)) +
  geom_histogram(binwidth = 1, fill = "orange", color = "black", alpha = 0.7) +
  labs(title = "Histogram for California",
       x = "Ratings",
       y = "Frequency") + theme_bw()


ggplot(df, aes(x = stars)) +
  geom_histogram(binwidth = 1, fill = "red", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Ratings Received in USA",
       x = "Ratings",
       y = "Frequency") + theme_bw()

mean(df$stars)
mean(ny_data$stars)
mean(ca_data$stars)



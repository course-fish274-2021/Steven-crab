


fish_data <- read.csv("data/Gaeta_etal_CLC_data_1.csv")


library(dplyr)

# adding column to denote fish is big or small using 300 as cutoff

fish_data_cat <- fish_data %>%
  filter(scalelength > 1) %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))


library(ggplot2)

# Plot historgram of fish data
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram()






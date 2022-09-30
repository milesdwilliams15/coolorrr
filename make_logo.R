# Make coolorrr package logo

library(hexSticker)
library(UCSCXenaTools)
library(tidyverse)
library(here)

p <-
  ggplot(mtcars) +
  aes(wt, mpg, color = as.factor(cyl)) +
  geom_point() +
  labs(
    x = NULL,
    y = NULL
  ) +
  theme_minimal() +
  theme(
    axis.ticks = element_blank(),
    axis.text = element_blank(),
    legend.position = "none"
  )

sticker(
  p,
  package = "coolorrr",
  p_size = 30,
  s_x = 1,
  s_y=1,
  s_width=1.5,
  s_height = 1.45,
  p_x = 1,
  p_y = 1,
  p_color = "royalblue",
  h_fill = "darkgrey",
  h_color = "royalblue",
  url = "https://github.com/milesdwilliams15/coolorrr",
  filename = here("inst", "logo.png")
)

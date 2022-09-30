# Make coolorrr package logo

library(hexSticker)
library(UCSCXenaTools)
library(tidyverse)
library(coolorrr)
library(here)
set_palette()

p <-
  ggplot(mtcars) +
  aes(mpg, fill = as.factor(cyl)) +
  geom_density(alpha = 0.5) +
  labs(
    x = NULL,
    y = NULL
  ) +
  ggpal(aes = "fill") +
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
  h_fill = "white",
  h_color = "royalblue",
  url = "https://github.com/milesdwilliams15/coolorrr",
  filename = here("inst", "logo.png")
)

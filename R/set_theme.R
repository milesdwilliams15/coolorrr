#' Set {coolorrr} Palette for ggplots
#'
#' The below function can be called to set some special `{coolor}` defaults for ggplots.
#'
#' @return The function adds four objects to the global environment for the four unique palette types created by a call to set_palette().
#' @export
set_theme <- function() {
  # Start with the FiveThirtyEight theme from {ggthemes}
  theme_set(ggthemes::theme_fivethirtyeight())

  # Overrides
  theme_update(
    axis.title = element_text(hjust = 0.9),
    plot.title.position = "plot",
    panel.background = element_rect(fill = "white"),
    plot.background = element_rect(fill = "white"),
    legend.key = element_rect(fill = "white")
  )
}

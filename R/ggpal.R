#' Apply a Custom Palette to ggplot()
#'
#' This function applies one of four palettes to a ggplot object that have been
#' set using set_palette(). set_palette() must be used before ggpal() can be used.
#' This function is a wrapper for ggplot2 functions that can be used to "manually"
#' update the color palette of a plot.
#'
#' @param type A character string noting whether the palette to be used is one of `"qualitative"`, `"diverging"`, `"sequential"`, or `"binary"`.
#' @param aes A character string indicating whether the aesthetic mapping is for the `"color"` or `"fill"` of the plot.
#' @param midpoint A numerical value noting the midpoint used for a palette of type `"diverging"`.
#' @param ... Additional commands to pass to `ggplot2::scale_*` functions in ggplot2.
#' @return `ggpal()` calls one of the following, depending on the palette type and aes selected: `scale_*_manual()`, `scale_*_gradient2()`, `scale_*_gradient()`.
#' @export
ggpal <- function(type = "qualitative",
                  aes = "color",
                  midpoint = 0,
                  ...) {
  if(!exists('dive')) {
    stop("You must use set_palette() before using ggpal().")
  }
  if(!any(type %in% c("qualitative", "diverging", "sequential", "binary"))) {
    stop("You have not selected an appropriate palette type! Check your spelling!")
  }
  if(!any(aes %in% c("color", "fill"))) {
    stop("You have not selected an appropriate aes! Check your spelling!")
  }
  if(type == "qualitative" & aes == "color") {
    ggplot2::scale_color_manual(values = qual, ...)
  } else if(type == "qualitative" & aes == "fill") {
    ggplot2::scale_fill_manual(values = qual, ...)
  } else if(type == "diverging" & aes == "color") {
    ggplot2::scale_color_gradient2(low = dive[1], mid = dive[2], high = dive[3],
                          midpoint = midpoint, ...)
  } else if(type == "diverging" & aes == "fill") {
    ggplot2::scale_fill_gradient2(low = dive[1], mid = dive[2], high = dive[3],
                         midpoint = midpoint, ...)
  } else if(type == "sequential" & aes == "color") {
    ggplot2::scale_color_gradient(low = sequ[1], high = sequ[2], ...)
  } else if(type == "sequential" & aes == "fill") {
    ggplot2::scale_fill_gradient(low = sequ[1], high = sequ[2], ...)
  } else if(type == "binary" & aes == "color") {
    ggplot2::scale_color_manual(values = dual, ...)
  } else if(type == "binary" & aes == "fill") {
    ggplot2::scale_fill_manual(values = dual, ...)
  }
}

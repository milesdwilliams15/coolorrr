#' Extract Coolors and Set Palette
#'
#' The below function is used to extract and set
#' color palettes that will then be applied with
#' ggpal(). If values are NULL, default palettes
#' are used.
#'
#' @param qualitative Either a vector of hexadecimal color codes or a character string url for a multi-valued qualitative color palette selected at coolors.co.
#' @param diverging The same as the above, but where the palette must contain three and only three unique colors to indicate the low, mid, and high end values of the diverging palette.
#' @param sequential The same as the above, but where the palette must contain two and only two colors to indicate the low and high end values of the sequential palette.
#' @param binary The same as the above, but where the palette must contain two and only two colors for two distinct qualitative values.
#' @return The function adds four objects to the global environment for the four unique palette types created by a call to set_palette().
#' @export
set_palette <- function(
    qualitative = NULL,
    diverging = NULL,
    sequential = NULL,
    binary = NULL
) {
  if(is.null(qualitative)) {
    qual <<- coolors("https://coolors.co/265a73-e8c547-b0bbbf-a85751-331832")
  } else {
    qual <<- coolors(qualitative)
  }
  if(is.null(diverging)) {
    dive <<- coolors("https://coolors.co/265a73-eff1f3-df2935")
  } else {
    dive <<- coolors(diverging)
    if(length(dive)!=3) stop("Diverging palette must have 3 colors! You have: ", length(dive))
  }
  if(is.null(sequential)) {
    sequ <<- coolors("https://coolors.co/eff1f3-265a73")
  } else {
    sequ <<- coolors(sequential)
    if(length(sequ)!=2) stop("Sequential palette must have 2 colors! You have: ", length(sequ))
  }
  if(is.null(binary)) {
    dual <<- coolors("https://coolors.co/faa916-265a73")
  } else {
    dual <<- coolors(binary)
    if(length(dual)!=2) stop("Binary palette must have 2 colors! You have: ", length(dual))
  }
}

#' Extract Coolors and Set Palette
#'
#' The below functions are used to extract and set
#' color palettes that will then be applied with
#' ggpal().
#'
#' @param url The url in " " of the coolors webpage unique to your desired palette.
#' @return A character string of the unique hexadecimal color codes that correspond to the url.
#' @export
coolors <- function(url) {
  url <- as.character(url)
  col <- stringr::str_remove(url, "https://coolors.co/")
  col <- stringr::str_remove(col, "palette/")
  col <- unlist(strsplit(col, "-"))
  paste0("#", col)
}

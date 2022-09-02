#' Assigns the selected palette
#'
#' @param palette Name of palette to use 'primary brand', 'accent', 'extended accent', 'nuetral accent', or 'safety'
#' @param reverse Boolean indicating whether to reverse the order
#' @param ... Other parameters passed to ggplot2::discrete_scale() or ggplot2::scale_color_gradientn()
#'
#' @return New color palette based on names
#' @export
#'
#' @examples
mn_state_pal <- function(palette = "primary brand", reverse = FALSE, ...) {
  pal <- mn_state_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}

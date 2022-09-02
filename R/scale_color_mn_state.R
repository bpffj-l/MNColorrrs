#' Minnesota state colors for color aesthetics in ggplot
#'
#' @param palette The color palette to use
#' @param discrete Boolean for whether the data is discrete
#' @param reverse Boolean to revers the order of the categories
#' @param ... Other parameters passed to ggplot2::discrete_scale() or ggplot2::scale_color_gradientn()
#'
#' @return ggplot2 object with Minnesota state branding colors
#' @export
#'
#' @examples
scale_color_mn_state <- function(palette = "primary brand", discrete = TRUE, reverse = FALSE, ...) {
  # palette = "primary brand"
  # discrete = TRUE
  # reverse = FALSE
  pal <- mn_state_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("mn_state_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

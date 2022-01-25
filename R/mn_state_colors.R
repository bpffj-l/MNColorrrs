# MN state colors: https://mn.gov/portal/brand/style-guide/colors/
mn_state_colors <- c(
  `green`      = "#78BE21",
  `blue`       = "#003865",
  `white` = "#FFFFFF",
  `black` = "#000000",
  `accent teal` = "#008EAA",
  `accent green` = "#0D5257",
  `accent orange`= "#8D3F2B",
  `accent purple` = "#5D295F",
  `blue gray` = "#A4BCC2",
  `cream` = "#F5E1A4",
  `sky blue` = "#9BCBEB",
  `gold` = "#FFC845",
  `dark gray` = "#53565A",
  `medium gray` = "#97999B",
  `light gray` = "#D9D9D6",
  `red` = "#A6192E",
  `orange` = "#E57200")

mn_state_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (mn_state_colors)

  mn_state_colors[cols]
}

mn_state_palettes <- list(
  `primary brand`  = mn_state_cols("blue", "green", "white", "black"),

  `accent`  = mn_state_cols("accent teal","accent green","accent orange","accent purple"),

  `extended accent`   = mn_state_cols("blue gray", "cream", "sky blue", "gold"),

  `nuetral accent` = mn_state_cols("dark gray", "medium gray", "light gray"),

  `safety`  = mn_state_cols("red", "orange")
)

mn_state_pal <- function(palette = "primary brand", reverse = FALSE, ...) {
  pal <- mn_state_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}

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

#' Minnesota state colors for fill aesthetics in ggplot
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
scale_fill_mn_state <- function(palette = "primary brand", discrete = TRUE, reverse = FALSE, ...) {
  pal <- mn_state_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("mn_state_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}

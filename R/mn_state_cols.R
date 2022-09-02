#' Selects specific colors from Minnesota colors
#'
#' @param ... List of colors
#'
#' @return Correct list of colors
#' @export
#'
#' @examples
mn_state_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (mn_state_colors)

  mn_state_colors[cols]
}

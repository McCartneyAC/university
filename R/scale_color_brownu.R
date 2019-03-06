brownu <- c(
  "#ed1c24",
  "#4e3629",
  "#ffc72c",
  "#98a4ae",
  "#59cbe8",
  "#00b398",
  "#003c71",
  "#b7b09c"
)

pal_brownu <- function(palette = c("brownu"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- brownu
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  scales::manual_pal(unname(alpha_cols))
}

#' Scale Colors as Brown University
#'
#' @export scale_color_brownu
scale_color_brownu <- function(palette = c("brownu"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("colour", "brownu", pal_brownu(palette, alpha), ...)
}

scale_colour_brownu <- scale_color_brownu

#' Scale Fill as Brown University
#'
#' @export scale_fill_brownu
scale_fill_brownu <- function(palette = c("brownu"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("fill", "brownu", pal_brownu(palette, alpha), ...)
}

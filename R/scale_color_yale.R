yale <- c(
  "#00356b",
  "#286dc0",
  "#63aaff",
  "#222222",
  "#4a4a4a",
  "#978d85",
  "#dddddd",
  "#f9f9f9",
  "#5f712d",
  "#bd5319"
)

pal_yale <- function(palette = c("yale"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- yale
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  scales::manual_pal(unname(alpha_cols))
}

#' Scale Colors as Yale
#'
#' @export scale_color_yale
scale_color_yale <- function(palette = c("yale"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("colour", "yale", pal_yale(palette, alpha), ...)
}

scale_colour_yale <- scale_color_yale

#' Scale Fill as Yale
#'
#' @export scale_fill_yale
scale_fill_yale <- function(palette = c("yale"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("fill", "yale", pal_yale(palette, alpha), ...)
}

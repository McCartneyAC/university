wm<-c(green = "#115740",
      gold = "#b9975b",
      silver  = "#d0d3d4",
      patina  = "#00b388",
      colonial  = "#cab64b",
      vine  = "#83434e",
      sky  = "#64ccc9",
      brick  = "#e56a54",
      moss  = "#789D4a",
      woods  = "#789f90",
      slate  = "#5b6770",
      griffin  = "#183028",
      wren  = "#00313c",
      spirit  = "#f0b323"
)

pal_wm <- function(palette = c("wm"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- wm
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  scales::manual_pal(unname(alpha_cols))
}

#' Scale Colors as College of William & Mary
#'
#' @export scale_color_wm
scale_color_wm <- function(palette = c("wm"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("colour", "wm", pal_wm(palette, alpha), ...)
}

scale_colour_wm <- scale_color_wm

#' Scale Fill as College of William & Mary
#'
#' @export scale_fill_wm
scale_fill_wm <- function(palette = c("wm"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("fill", "wm", pal_wm(palette, alpha), ...)
}

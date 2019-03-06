
american<-c(
  altblue = "#13477D",
  altred = "#961e28",
  taupe = "#7E6D5F",
  slate = "#406B72",
  teal = "#67854e",
  teal = "#008290",
  yellow = "#eeb137",
  warm = "#005578",
  librarygrey = "#5e6769")

pal_american <- function(palette = c("american"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- american
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  scales::manual_pal(unname(alpha_cols))
}

#' Scale Colors as American University
#'
#' @export scale_color_american

scale_color_american <- function(palette = c("american"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("colour", "american", pal_american(palette, alpha), ...)
}

scale_colour_american<-scale_color_american

#' Scale fill as American University
#'
#' @export scale_fill_american
scale_fill_american <- function(palette = c("american"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("fill", "american", pal_american(palette, alpha), ...)
}

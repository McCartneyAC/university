nyu <- c(
  "#57068c",
  "#000000",
  "#b8b8b8",
  "#cb0200",
  "#e86c00",
  "#489141",
  "#28619e",
  "#3dbbdb",
  "#007c70",
  "#d71e5e",
  "#e86c00",
  "#ffc107"
)

nyu_continuous <- c(
  # these will need some modification as points within
  # scale_color_continuous to work
  "#8900e1","#57068c","#330662","#220337")


pal_nyu <- function(palette = c("nyupal"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- nyupal
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  scales::manual_pal(unname(alpha_cols))
}

#' Scale Colors as New York University
#'
#' @export scale_color_nyu
scale_color_nyu <- function(palette = c("nyupal"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("colour", "nyupal", pal_nyu(palette, alpha), ...)
}

scale_colour_nyu <- scale_color_nyu

#' Scale Fill as New York University
#'
#' @export scale_fill_nyu
scale_fill_nyu <- function(palette = c("nyupal"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("fill", "nyupal", pal_nyu(palette, alpha), ...)
}

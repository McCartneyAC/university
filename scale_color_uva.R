uvapal <- c("#E57200","#232D4B", "#007681","#F2CD00","#692A7E", "#84BD00","#A5ACAF", "#5C7F92","#857363","#CAC0B6")

pal_uva <- function(palette = c("uvapal"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- uvapal
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  scales::manual_pal(unname(alpha_cols))
}


scale_color_uva <- function(palette = c("uvapal"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("colour", "uvapal", pal_uva(palette, alpha), ...)
}

scale_fill_uva <- function(palette = c("uvapal"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("fill", "uvapal", pal_uva(palette, alpha), ...)
}


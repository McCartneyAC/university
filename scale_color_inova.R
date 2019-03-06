inova <- c(
inova_blue = "#004B8D",
inova_red = "#D52B1E",
inova_light = "6CADDF",
gray1 = "#4D4f53",
gray2 = "#A5A5A9",
gray3 = "#D0D0D2",
gray4 = "#E6E6E7")


pal_inova <- function(palette = c("inova"), alpha = 1) {
  palette <- match.arg(palette)
  
  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")
  
  raw_cols <- inova
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )
  
  scales::manual_pal(unname(alpha_cols))
}


scale_color_inova <- function(palette = c("inova"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("colour", "inova", pal_inova(palette, alpha), ...)
}

scale_fill_inova <- function(palette = c("inova"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("fill", "inova", pal_inova(palette, alpha), ...)
}

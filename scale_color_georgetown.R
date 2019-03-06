georgetown <- c(
blue = "#041e42", 
gray = "#63666a", 
pantone280 = "#012169", 
pantone293 = "#003da5", 
coolgray4 = "#bbbcbc", 
pantone7527 = "#d6d2c4", 
pantone306 = "#00b5e2", 
pantone369 = "#64a70b", 
pantone199 = "#d50032", 
pantone202 = "#862633", 
pantone1205  = "#f8e08e"
)



pal_georgetown <- function(palette = c("georgetown"), alpha = 1) {
  palette <- match.arg(palette)
  
  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")
  
  raw_cols <- georgetown
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )
  
  scales::manual_pal(unname(alpha_cols))
}


scale_color_georgetown <- function(palette = c("georgetown"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("colour", "georgetown", pal_georgetown(palette, alpha), ...)
}

scale_fill_georgetown <- function(palette = c("georgetown"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("fill", "georgetown", pal_georgetown(palette, alpha), ...)
}

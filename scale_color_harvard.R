harvard<-c(
"#A41034",
"#48c4b7",
"#ed6a47",
"#CED665",
"#faae53", 
"#afe6f1",
"#000000",
"#ffd5a3",
"#EEE29F",
"#c4e4dd",
"#CE614A",
"#737a15",
"#0d667f")


pal_harvard <- function(palette = c("harvard"), alpha = 1) {
  palette <- match.arg(palette)
  
  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")
  
  raw_cols <- harvard
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )
  
  scales::manual_pal(unname(alpha_cols))
}


scale_color_harvard <- function(palette = c("harvard"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("colour", "harvard", pal_harvard(palette, alpha), ...)
}

scale_fill_harvard <- function(palette = c("harvard"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("fill", "harvard", pal_harvard(palette, alpha), ...)
}

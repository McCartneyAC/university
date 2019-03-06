vatech<-c(
chicago = "#8B1F41",
orange = "#E87722",
stone = "#75787B",
yardline = "#FFFFFF",
pamplin = "#508590",
triumphant = "#F7EA48",
boundless = "#CE0058",
Pylon = "#642667",
Sunset = "#ED8B00",
turquoise = "#2CD5C4",
skipper = "#E5E1E6",
landgrant = "#D7D2CB")


pal_vatech <- function(palette = c("vatech"), alpha = 1) {
  palette <- match.arg(palette)
  
  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")
  
  raw_cols <- vatech
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )
  
  scales::manual_pal(unname(alpha_cols))
}


scale_color_vatech <- function(palette = c("vatech"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("colour", "vatech", pal_vatech(palette, alpha), ...)
}

scale_fill_vatech <- function(palette = c("vatech"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("fill", "vatech", pal_vatech(palette, alpha), ...)
}

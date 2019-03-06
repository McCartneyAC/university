stanford <- c(
cardinal = "#8c1515",
grey = "#4d4f53",
chocolate = "#2F2424",
stone = "#544948",
sandstone_l = "#F9F6EF",
sandstone = "#d2c295",
warmgrey = "#3f3c30",
beige = "#9d9573",
sage = "#c7d1c5",
clay = "#5f574f",
black = "#2e2d29", 
cloud = "#dad7cb",
driftwood = "#b6b1a9",
sandhill = "#b3995d",
palo_alto = "#175e54",
teal = "#00505c",
purple = "#53284f",
redwood = "#8d3c1e",
brown = "#5e3032",
sky = "#0098db",
lagunita = "#007c92",
mint = "#009b76",
gold = "#b26f16",
sun  = "#eaab00",
poppy = "#e98300"
)


pal_stanford <- function(palette = c("stanford"), alpha = 1) {
  palette <- match.arg(palette)
  
  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")
  
  raw_cols <- stanford
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )
  
  scales::manual_pal(unname(alpha_cols))
}


scale_color_stanford <- function(palette = c("stanford"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("colour", "stanford", pal_stanford(palette, alpha), ...)
}

scale_fill_stanford <- function(palette = c("stanford"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("fill", "stanford", pal_stanford(palette, alpha), ...)
}

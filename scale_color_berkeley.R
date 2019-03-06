berkeley <- c( 
berkeleyblue = "#003262" ,
founders = "#3B7EA1" ,
caligold = "#FDB515" ,
medalist = "#C4820E" ,
wellman = "#D9661F" ,
rosegarden = "#EE1F60" ,
bridge = "#ED4E33" ,
southhall = "#6C3302" ,
bayfog = "#DDD5C7" ,
lawrence = "#00B0DA" ,
laplane = "#00A598" ,
pacific = "#46535E" ,
sather= "#B9D3B6" ,
ion = "#CFDD45" ,
soybean= "#859438" ,
stone_pine = "#584F29"
)

pal_berkeley <- function(palette = c("berkeley"), alpha = 1) {
  palette <- match.arg(palette)
  
  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")
  
  raw_cols <- berkeley
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )
  
  scales::manual_pal(unname(alpha_cols))
}


scale_color_berkeley <- function(palette = c("berkeley"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("colour", "berkeley", pal_berkeley(palette, alpha), ...)
}

scale_fill_berkeley <- function(palette = c("berkeley"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("fill", "berkeley", pal_berkeley(palette, alpha), ...)
}

duke <- c(
  Navy  =     "#001A57",
  Royal   =     "#00539B",
  Copper		=	 "#C84E00",
  Persimmon	=	 "#E89923",
  Dandelion	=	 "#FFD960",
  Piedmont	=	 "#A1B70D",
  Eno		=	 "#339898",
  Magnolia	=	 "#1D6363",
  PrussianBlue	=	 "#005587",
  ShaleBlue	=	 "#0577B1",
  Ironweed	=	 "#993399",
  Hatteras	=	 "#E2E6ED",
  WhisperGray	=	 "#F3F2F1",
  GingerBeer	=	 "#FCF7E5",
  Dogwood		=	 "#988675",
  Shackleford	=	 "#DAD0C6",
  CastIron	=	 "#262626",
  Graphite	=	 "#666666",
  Granite		=	 "#B5B5B5",
  Limestone	=	 "#E5E5E5")

pal_duke <- function(palette = c("duke"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- duke
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  scales::manual_pal(unname(alpha_cols))
}


#' Scale Colors as Duke
#'
#' @export scale_color_duke
scale_color_duke <- function(palette = c("duke"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("colour", "duke", pal_duke(palette, alpha), ...)
}

scale_colour_duke <- scale_color_duke

#' Scale Fill as Duke
#'
#' @export scale_fill_duke
scale_fill_duke <- function(palette = c("duke"), alpha = 1, ...) {
  palette <- match.arg(palette)
  ggplot2::discrete_scale("fill", "duke", pal_duke(palette, alpha), ...)
}

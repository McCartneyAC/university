palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
    continuous = grDevices::colorRampPalette(pal)(n),
    discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}


palettes<-list(
    wm= c("#115740", "#b9975b", "#d0d3d4", "#00b388", "#cab64b", "#83434e", "#64ccc9", "#e56a54", "#789D4a",
                    "#789f90", "#5b6770", "#183028", "#00313c", "#f0b323"),
    harvard = c("#A41034","#48c4b7","#ed6a47","#CED665","#faae53", "#afe6f1","#000000","#ffd5a3","#EEE29F","#c4e4dd",
               "#CE614A","#737a15","#0d667f"),
    berkeley = c("#003262" , "#3B7EA1" , "#FDB515" , "#C4820E" , "#D9661F" , "#EE1F60" ,"#ED4E33" , "#6C3302" , 
                  "#DDD5C7" , "#00B0DA" , "#00A598" , "#46535E" , "#B9D3B6" , "#CFDD45" ,"#859438" , "#584F29"),
    american = c("#13477D", "#961e28", "#7E6D5F", "#406B72", "#67854e", "#008290", "#eeb137", "#005578","#5e6769"),
brownu = c("#ed1c24","#4e3629","#ffc72x","#98a4ae","#59cbe8","#00b398","#003c71","#b7b09c"),
    duke = c( "#001A57", "#00539B","#C84E00","#E89923","#FFD960","#A1B70D","#339898","#1D6363","#005587","#0577B1","#993399",
"#E2E6ED","#F3F2F1","#FCF7E5","#988675","#DAD0C6","#262626","#666666","#B5B5B5","#E5E5E5"),
georgetown = c("#041e42", "#63666a", "#012169", "#003da5", "#bbbcbc", "#d6d2c4", "#00b5e2", "#64a70b", "#d50032", "#862633", "#f8e08e")

)

print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
    ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}

pal <- palette(name = "american", 40, type = "continuous")
print.palette(pal)

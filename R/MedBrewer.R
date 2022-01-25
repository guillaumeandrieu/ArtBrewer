# MedBrewer: an art-based source of colorful palettes for R

# Custom Palettes
#
MedPalette <- list(
 Balanced = list(c("#c4aeb1","#e3c1c0","#d29381","#ccb97e","#6667ab","#86a293","#884c5e","#9d848e"), c(1,2,3,4,5,6,7,8)),
 Wellspring = list(c("#48996b", "#759f51","#436a2f","#cfbf54","#b3832f","#8c5896","#6667ab","#a1cac9"), c(1,2,3,4,5,6,7,8)),
 MED = list(c("#043AD6","#FFFFFF","#E11428"), c(1,2,3)),
 Albers1 =  list(c("#eeb5bb", "#a07f90", "#7fab88", "#d081ba", "#ce3d4e", "#f99480", "#d3a663", "#ecc373"), c(1,2,3,4,5,6,7,8)),
 Albers2 = list(c("#508082", "#09455d", "#2e5542", "#1d342a", "#a75c18", "#a13020", "#d3b97c", "#caa264"), c(1,2,3,4,5,6,7,8)),
 Corot = list(c("#dee4f4", "#88afb4", "#a9be93", "#647553", "#487439", "#2b3b31"), c(1,2,3,4,5,6)),
 Merz = list(c("#ccae5b", "#3a7db8", "#7ba796", "#517a7b",  "#bdbcb8", "#435658"), c(1,2,3,4,5,6)),
 Valloton = list(c("#768161", "#1a508e", "#a52c33", "#662f56", "#d2bd88", "#c9a781", "#3c4d47", "#5d3d32", "#d1cab0", "#292a25"), c(1,2,3,4,5,6,7,8,9,10))
)

# Function for generating palettes

#' MED Palette Generator
#'
#' Colorful palettes inspired by art.
#' Based on the work of Blake R Mills \href{https://github.com/BlakeRMills/MetBrewer}{on Github}.
#'
#' @param name Name of Palette.
#' @param n Number of desired colors. If number of requested colors is beyond the scope of the palette,
#' colors are automatically interpolated. If n is not provided, the length of the palette is used.
#' @param type Either "continuous" or "discrete". Use continuous if you want to automatically
#' interpolate between colors.
#' @return A vector of colors.
#' @examples
#' med.brewer("MED")
#'
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
#' geom_violin() +
#' scale_fill_manual(values=med.brewer("Valloton", 3))
#'
#' ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
#' geom_point(size=2) +
#' scale_color_manual(values=med.brewer("Albers2", 3))
#'
#' ggplot(data=iris, aes(x=Species, y=Sepal.Width, color=Sepal.Width)) +
#' geom_point(size=3) +
#' scale_color_gradientn(colors=med.brewer("Merz"))
#' @keywords colors
#' @export
med.brewer <- function(name, n, type = c("discrete", "continuous")) {
 
 palette <- MedPalette[[name]]
 
 if (is.null(palette)|is.numeric(name)){
  stop("Palette does not exist...yet!")
 }
 
 if (missing(n)) {
  n <- length(palette[[1]])
 }
 
 if (missing(type)) {
  if(n > length(palette[[1]])){type <- "continuous"}
  else{type <- "discrete"}
 }
 
 type <- match.arg(type)
 
 
 if (type == "discrete" && n > length(palette[[1]])) {
  stop("Number of requested colors greater than what discrete palette can offer, \n  use as continuous instead.")
 }
 
 out <- switch(type,
               continuous = grDevices::colorRampPalette(palette[[1]])(n),
               discrete = palette[[1]][which(palette[[2]] %in% c(1:n)==TRUE)],
 )
 structure(out, class = "palette", name = name)
 
}

# Function for printing palette

#' @export
#' @importFrom grDevices rgb
#' @importFrom graphics rect par image text

print.palette <- function(x, ...) {
 n <- length(x)
 old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
 on.exit(par(old))
 
 image(1:n, 1, as.matrix(1:n), col = x,
       ylab = "", xaxt = "n", yaxt = "n", bty = "n")
 
 rect(0, 0.92, n + 1, 1.08, col = rgb(1, 1, 1, 0.8), border = NA)
 text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 2.5, family = "serif")
}



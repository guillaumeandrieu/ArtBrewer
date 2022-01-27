# MedBrewer: an art-based source of colorful palettes for R

# Custom Palettes
#
MedPalette <- list(
 Albers1 =  list(c("#eeb5bb", "#a07f90", "#7fab88", "#d081ba", "#ce3d4e", "#f99480", "#d3a663", "#ecc373"), c(1,2,3,4,5,6,7,8)),
 Albers2 = list(c("#508082", "#09455d", "#2e5542", "#1d342a", "#a75c18", "#a13020", "#d3b97c", "#caa264"), c(1,2,3,4,5,6,7,8)),
 Balanced = list(c("#c4aeb1","#e3c1c0","#d29381","#ccb97e","#6667ab","#86a293","#884c5e","#9d848e"), c(1,2,3,4,5,6,7,8)),
 Biarritz = list(c("#93281c", "#f2bb37", "#74b9a3", "#649e8d"),c(1,2,3,4)),
 Corot = list(c("#dee4f4", "#88afb4", "#a9be93", "#647553", "#487439", "#2b3b31"), c(1,2,3,4,5,6)),
 Hokusai1 = list(c("#deebd9", "#b7cfc4", "#2c6f9c", "#19375b", "#fcdcad", "#e3b091"), c(1,2,3,4,5,6)),
 Hokusai2 = list(c("#d8d97a", "#95c36e", "#74c8c3", "#5a97c1", "#295384", "#0a2e57"), c(4, 2, 5, 3, 1, 6)),
 MED = list(c("#053061","#FFFFFF","#B2182B"), c(1,2,3)),
 Merz = list(c("#ccae5b", "#3a7db8", "#7ba796", "#517a7b",  "#bdbcb8", "#435658"), c(1,2,3,4,5,6)),
 Munch = list(c("#e0b583", "#e07538", "#e42400", "#729fa5", "#486b6d", "#47585a", "#949885", "#486c5e", "#38483d"),c(1,2,3,4,5,6,7,8,9)),
 Renoir = list(c("#17154f", "#2f357c", "#6c5d9e", "#9d9cd5", "#b0799a", "#f6b3b0", "#e48171", "#bf3729", "#e69b00", "#f5bb50", "#ada43b", "#355828"), c(2, 5, 9, 12, 3, 8, 7, 10, 4, 1, 6, 11)),
 Seurat = list(c("#95b560", "#50765f", "#2b463d", 
                 "#b5c2cb","#738aaa", "#364c6b", 
                 "#e79a70", "#b76a4c", "#8f4538",
                 "#a19cc6", "#6f6798", "#595383", 
                 "#c8a0a0", "#aa7773", "#773e51",
                 "#ae9b97", "#7d7666", "#1d1b1e"), c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18)),
 Signac = list(c("#fbe183", "#f4c40f", "#fe9b00", "#d8443c", "#9b3441", "#de597c", "#e87b89", "#e6a2a6", "#aa7aa1", "#9f5691", "#633372", "#1f6e9c", "#2b9b81", "#92c051"), c(13, 3, 2, 1, 11, 5, 8, 14, 12, 10, 7, 4, 6, 9)),
 Vallotton = list(c("#768161", "#1a508e", "#a52c33", "#662f56", "#d2bd88", "#c9a781", "#3c4d47", "#5d3d32", "#d1cab0", "#292a25"), c(1,2,3,4,5,6,7,8,9,10)),
 VanGogh1 = list(c("#cece8e", "#ceb72d", "#798b25", "#91a4c4", "#496f9e", "#3e5a8c", "#303986", "#212d5f", "#692719", "#4f3421", "#2b2213"), c(1,2,3,4,5,6,7,8,9,10,11)),
 VanGogh2 = list(c("#bd3106", "#d9700e", "#e9a00e", "#eebe04", "#5b7314", "#c3d6ce", "#89a6bb", "#454b87"), c(1, 5, 8, 2, 7, 4, 6, 3)),
 Wellspring = list(c("#48996b", "#759f51","#436a2f","#cfbf54","#b3832f","#8c5896","#6667ab","#a1cac9"), c(1,2,3,4,5,6,7,8))
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
#' scale_fill_manual(values=med.brewer("Vallotton", 3))
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



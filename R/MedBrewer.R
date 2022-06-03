# MedBrewer: an art-based source of colorful palettes for R

# Custom Palettes
#
MedPalette <- list(
 Albers1 =  list(c("#eeb5bb", "#a07f90", "#7fab88", "#d081ba", "#ce3d4e", "#f99480", "#d3a663", "#ecc373"), c(1,2,3,4,5,6,7,8)),
 Albers2 = list(c("#508082", "#09455d", "#2e5542", "#1d342a", "#a75c18", "#a13020", "#d3b97c", "#caa264"), c(1,2,3,4,5,6,7,8)),
 Balanced = list(c("#c4aeb1","#e3c1c0","#d29381","#ccb97e","#6667ab","#86a293","#884c5e","#9d848e"), c(1,2,3,4,5,6,7,8)),
 Biarritz = list(c("#93281c", "#f2bb37", "#74b9a3", "#649e8d"),c(1,2,3,4)),
 Corot = list(c("#dee4f4", "#88afb4", "#a9be93", "#647553", "#487439", "#2b3b31"), c(1,2,3,4,5,6)),
 Colorful = list(c("#8db600", "#0067a4", "#008755", "#bd0031", "#f89279", "#f38400", "#dcd200", "#f3c300", "#872c16", "#865592", "#5f4e96", "#c2b180", "#f6a600", "#a0c9f0", "#b3446c", "#848482", "#e68fac"), c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17)),
 Hokusai1 = list(c("#deebd9", "#b7cfc4", "#2c6f9c", "#19375b", "#fcdcad", "#e3b091"), c(1,2,3,4,5,6)),
 Hokusai2 = list(c("#d8d97a", "#95c36e", "#74c8c3", "#5a97c1", "#295384", "#0a2e57"), c(4, 2, 5, 3, 1, 6)),
 Hokusai3 = list(c("#abc9c8", "#72aeb6", "#4692b0", "#2f70a1", "#134b73", "#0a3351"), c(5, 2, 4, 1, 6, 3), colorblind=TRUE),
 MED = list(c("#053061","#FFFFFF","#B2182B"), c(1,2,3)),
 Merz = list(c("#ccae5b", "#3a7db8", "#7ba796", "#517a7b",  "#bdbcb8", "#435658"), c(1,2,3,4,5,6)),
 Munch = list(c("#e0b583", "#e07538", "#e42400", "#729fa5", "#486b6d", "#47585a", "#949885", "#486c5e", "#38483d"),c(1,2,3,4,5,6,7,8,9)),
 OKeeffe = list(c("#fbe3c2", "#f2c88f", "#ecb27d", "#e69c6b", "#d37750", "#b9563f", "#92351e"), c(7, 1, 6, 4, 2, 5, 3), colorblind=TRUE),
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
 Wellspring = list(c("#48996b", "#759f51","#436a2f","#cfbf54","#b3832f","#8c5896","#6667ab","#a1cac9"), c(1,2,3,4,5,6,7,8)),
 RdYlBu = list(c("#92001D", "#cb1a1e", "#ee5634", "#fb9e4f", "#fdda7e", "#ffffb2", "#d9f0f6", "#9cd0e3", "#629cc6", "#3660a5", "#252383"), c(1,2,3,4,5,6,7,8,9,10,11))
)

# Function for generating palettes

#' Med Palette Generator
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
med.brewer <- function(name, n, type = c("discrete", "continuous"), direction = c(1, -1), override.order = FALSE) {
 
 `%notin%` <- Negate(`%in%`)
 
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
 
 if (missing(direction)) {
  direction <- 1
 }
 
 if (direction %notin% c(1, -1)){
  stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
 }
 

 type <- match.arg(type)
 
 if (type == "discrete" && n > length(palette[[1]])) {
  stop("Number of requested colors greater than what discrete palette can offer, \n  use as continuous instead.")
 }
 
 continuous <-  if (direction == 1) { grDevices::colorRampPalette(palette[[1]])(n)
 } else {
  grDevices::colorRampPalette(rev(palette[[1]]))(n)}
 
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


# MedBrewer palettes for plotting with ggplot2

#' MedBrewer palettes for plotting with ggplot2
#'
#' Function for using \code{MedBrewer} colors schemes in \code{ggplot2}. Use \code{\link{scale_color_meD_d}} and \code{\link{scale_fill_med_d}}
#' for discrete scales and \code{\link{scale_color_med_c}} and \code{\link{scale_fill_med_c}} for continuous scales.
#'
#' @param name Name of Palette.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @param override.order Colors are picked from palette to maximize readability and aesthetics. This means
#' that colors are not always selected in sequential order from the full palette. If override.order is set to TRUE,
#' colors are selected in sequential order from the full palette instead. Default is FALSE.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @import ggplot2
#' @examples
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
#' geom_point() +
#' scale_color_med_d("OKeefe")
#' @export

scale_color_med_d <- function(name, direction=1, override.order=FALSE, ...){
 
 med.brewer.disc <- function(name, direction = c(1, -1), override.order=FALSE) {
  
  `%notin%` <- Negate(`%in%`)
  palette <- MedPalettes[[name]]
  if (is.null(palette)|is.numeric(name)){
   stop("Palette does not exist...yet!")
  }
  
  if (direction %notin% c(1, -1)){
   stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }
  
  function(n) if(direction==1 & override.order==FALSE){
   palette[[1]][which(palette[[2]] %in% c(1:n)==TRUE)]
  }else if(direction==-1 & override.order==FALSE){
   rev(palette[[1]][which(palette[[2]] %in% c(1:n)==TRUE)])
  } else if(direction==1 & override.order==TRUE){
   palette[[1]][1:n]
  } else{
   rev(palette[[1]])[1:n]
  }
  
 }
 
 discrete_scale(aesthetics = "colour", scale_name="med_d",
                palette = med.brewer.disc(name=name, direction=direction, override.order=override.order))
}

#' MedBrewer palettes for plotting with ggplot2
#'
#' Function for using \code{MedBrewer} colors schemes in \code{ggplot2}. Use \code{\link{scale_color_med_d}} and \code{\link{scale_fill_med_d}}
#' for discrete scales and \code{\link{scale_color_med_c}} and \code{\link{scale_fill_med_c}} for continuous scales.
#'
#' @param name Name of Palette.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @param override.order Colors are picked from palette to maximize readability and aesthetics. This means
#' that colors are not always selected in sequential order from the full palette. If override.order is set to TRUE,
#' colors are selected in sequential order from the full palette instead. Default is FALSE.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @import ggplot2
#' @examples
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Species, y=Sepal.Length, fill=Species)) +
#' geom_violin() +
#' scale_fill_med_d("Renoir")
#' @export
scale_fill_med_d <- function(name, direction=1, override.order=FALSE, ...){
 med.brewer.disc <- function(name, direction = c(1, -1), override.order=FALSE) {
  
  `%notin%` <- Negate(`%in%`)
  palette <- MedPalettes[[name]]
  if (is.null(palette)|is.numeric(name)){
   stop("Palette does not exist...yet!")
  }
  
  if (direction %notin% c(1, -1)){
   stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }
  
  function(n) if(direction==1 & override.order==FALSE){
   palette[[1]][which(palette[[2]] %in% c(1:n)==TRUE)]
  }else if(direction==-1 & override.order==FALSE){
   rev(palette[[1]][which(palette[[2]] %in% c(1:n)==TRUE)])
  } else if(direction==1 & override.order==TRUE){
   palette[[1]][1:n]
  } else{
   rev(palette[[1]])[1:n]
  }
 }
 
 discrete_scale(aesthetics = "fill", scale_name="med_d",
                palette = med.brewer.disc(name=name, direction=direction, override.order=override.order))
}


#' MedBrewer palettes for plotting with ggplot2
#'
#' Function for using \code{MedBrewer} colors schemes in \code{ggplot2}. Use \code{\link{scale_color_med_d}} and \code{\link{scale_fill_med_d}}
#' for discrete scales and \code{\link{scale_color_med_c}} and \code{\link{scale_fill_med_c}} for continuous scales.
#'
#' @param name Name of Palette.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradientn}}
#' @import ggplot2
#' @examples
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Sepal.Length)) +
#' geom_point() +
#' scale_color_med_c("Seurat", direction=-1)
#' @export
scale_color_med_c <- function(name, direction=1, ...){
 
 `%notin%` <- Negate(`%in%`)
 
 if (direction %notin% c(1, -1)){
  stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
 }
 
 scale_color_gradientn(colors=med.brewer(name=name, direction=direction, override.order = F))
}


#' MedBrewer palettes for plotting with ggplot2
#'
#' Function for using \code{MedBrewer} colors schemes in \code{ggplot2}. Use \code{\link{scale_color_med_d}} and \code{\link{scale_fill_med_d}}
#' for discrete scales and \code{\link{scale_color_med_c}} and \code{\link{scale_fill_med_c}} for continuous scales.
#'
#' @param name Name of Palette. 
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradientn}}
#' @import ggplot2
#' @export
scale_fill_med_c <- function(name, direction=1, ...){
 
 `%notin%` <- Negate(`%in%`)
 
 if (direction %notin% c(1, -1)){
  stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
 }
 
 scale_fill_gradientn(colors=med.brewer(name=name, direction=direction, override.order = F))
}


#' MedBrewer palettes for plotting with ggplot2
#'
#' Function for using \code{MedBrewer} colors schemes in \code{ggplot2}. Use \code{\link{scale_color_med_d}} and \code{\link{scale_fill_med_d}}
#' for discrete scales and \code{\link{scale_color_med_c}} and \code{\link{scale_fill_med_c}} for continuous scales.
#'
#' @param name Name of Palette.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @param override.order Colors are picked from palette to maximize readability and aesthetics. This means
#' that colors are not always selected in sequential order from the full palette. If override.order is set to TRUE,
#' colors are selected in sequential order from the full palette instead. Default is FALSE.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @import ggplot2
#' @examples
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
#' geom_point() +
#' scale_colour_med_d("Corot")
#' @export

scale_colour_med_d <- scale_color_med_d

#' MedBrewer palettes for plotting with ggplot2
#'
#' Function for using \code{MedBrewer} colors schemes in \code{ggplot2}. Use \code{\link{scale_color_med_d}} and \code{\link{scale_fill_med_d}}
#' for discrete scales and \code{\link{scale_color_med_c}} and \code{\link{scale_fill_med_c}} for continuous scales.
#'
#' @param name Name of Palette.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradientn}}
#' @import ggplot2
#' @examples
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Sepal.Length)) +
#' geom_point() +
#' scale_colour_med_c("Wellspring", direction=-1)
#' @export

scale_colour_med_c <- scale_color_med_c



#' View all Palettes available
#'
#' Function for viewing all palettes available in MedBrewer.
#'
#' @param n Number of requested colors. If n is left blank, default palette is returned.
#' @param colorblind_only Should only colorblind friendly palettes be returned? Default is set to FALSE.
#' @param sequential Should palettes displayed all at once, or one at a time. Default is all at once (FALSE).
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @param override.order Colors are picked from palette to maximize readability and aesthetics. This means
#' that colors are not always selected in sequential order from the full palette. If override.order is set to TRUE,
#' colors are selected in sequential order from the full palette instead. Default is FALSE.
#' @examples
#' # All Palettes
#' display_all(sequential = FALSE, colorblind_only = FALSE)
#'
#' # All Colorblind Palettes
#' display_all(sequential = FALSE, colorblind_only = TRUE)
#'
#' # 5 Colors of all Palettes
#' display_all(5, sequential = FALSE, colorblind_only = FALSE)
#' @export
#' @importFrom graphics rect par layout polygon


display_all <- function(n, sequential = FALSE, colorblind_only = FALSE, direction = 1, override.order=FALSE){
 if(colorblind_only){
  N = length(colorblind_palettes)
  pal_names = colorblind_palettes
 }else{
  N = length(medPalettes)
  pal_names = names(medPalettes)
 }
 
 orig_pars <- par()
 
 plot_palette = function(name,n){
  par(mar = c(0.1,0.1,1,0.1))
  nn = ifelse(missing(n), length(med.brewer(name)), n)
  plot(0,type='n',bty='n',xaxt='n',yaxt='n',xlab='',ylab='',
       ylim = c(0,1),xlim=c(0,nn), main = name)
  for(j in 1:nn){
   polygon(x = c(j-1,j-1,j,j),
           y = c(0,1,1,0),
           border = NA,
           col = med.brewer(name, nn, direction= direction,override.order=override.order)[j])
  }
 }
 
 if(sequential){
  for(i in 1:N){
   
   if(missing(n)){
    
    plot_palette(pal_names[i])
    if(i < N) cat("Hit 'Enter' for next palette");readline()
    
   }else{
    
    plot_palette(pal_names[i],n)
    if(i < N) cat("Hit 'Enter' for next palette");readline()
   }
  }
 }else{
  
  if(missing(n)){
   
   if(colorblind_only){
    
    layout(matrix(1:N,6,4))
    for(i in 1:N) plot_palette(pal_names[i])
    
   }else{
    
    layout(matrix(1:N,8,7))
    for(i in 1:N) plot_palette(pal_names[i])
   }
   
  } else{
   
   if(colorblind_only){
    
    layout(matrix(1:N,6,4))
    for(i in 1:N) plot_palette(pal_names[i],n)
    
   }else{
    
    layout(matrix(1:N,8,7))
    for(i in 1:N) plot_palette(pal_names[i],n)
    
   }
   
  }
  
  layout(matrix(1,1,1))
  par(mar = orig_pars$mar)
  
 }
}

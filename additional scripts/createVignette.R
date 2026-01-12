library("ArtBrewer")

createVignettes <- function(){
 
 orig_pars <- par()
 par(mar = c(0.1,0.1,1,0.1))
 
 N = length(ArtPalette)
 pal_names = names(ArtPalette)
 
 for (i in 1:length(pal_names)){
  
  jpeg(filename = paste0("palettes/", pal_names[i], ".jpg"), width = 900, height = 600)
  print(art.brewer(pal_names[i]))
  dev.off()
  
  jpeg(filename = "palettes/all-palettes.jpeg", width = 900, height = 1200)
  display_all()
  dev.off()
 }
}


# MedBrewer

Provides a series of art-based colorful palettes.

Version 1.2.1 (6/03/2022)

## Install Package
MedBrewer is now able to be downloaded through the GitLab [here](https://gitlab.com/bioinformatics-inem/r-custom-packages/MedBrewer).

1. Locate and download the file `MedBrewer_x.x.x.tar.gz` (the numbers indicate the version of the package).

2. In R Studio, choose `Packages>Install>Install from: Package Archive File (.tgz; .tar.gz)` 

![](src/install-from-file.jpg)

And navigate to the downloaded archive.

## Usage

The function `med.brewer` calls the palette. You can specify the number of colors to use (and interpolate colors), or choose between discrete or continuous palettes as exemplified below.
It can be directly called in `ggplot2`. 

```{r}
library(MedBrewer)
med.brewer("MED")
```
![](palettes/med.jpeg)

```{r}
library(ggplot2)
ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
geom_violin() +
scale_fill_manual(values=med.brewer("Corot", 3))
```
![](src/example1.jpeg)

```{r}
ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
geom_point(size=2) +
scale_color_manual(values=med.brewer("Merz", 3))
```
![](src/example2.jpeg)

```{r}
ggplot(data=iris, aes(x=Species, y=Sepal.Width, color=Sepal.Width)) +
geom_point(size=3) +
scale_color_gradientn(colors=med.brewer("Albers1"))
```
![](src/example3.jpeg)

## Palettes

### Albers1

![](palettes/albers1-source.jpeg) 
![](palettes/albers1.jpeg)

--- 

### Albers2

![](palettes/albers2-source.jpeg)
![](palettes/albers2.jpeg)

--- 

### Balanced

![](palettes/balanced.jpeg)

--- 

### Biarritz

![](palettes/biarritz.jpeg)

--- 

### Colorful

![](palettes/colorful.jpeg)

--- 

### Corot

![](palettes/corot-source.jpeg)
![](palettes/corot.jpeg)

--- 

### Hokusai1

![](palettes/hokusai1-source.jpeg)
![](palettes/hokusai1.jpeg)

--- 

### Hokusai2

![](palettes/hokusai2-source.jpeg)
![](palettes/hokusai2.jpeg)

--- 

### Hokusai3

![](palettes/hokusai3-source.jpeg)
![](palettes/hokusai3.jpeg)

--- 

### MED

![](palettes/med.jpeg)

--- 

### Merz

![](palettes/merz-source.jpeg)
![](palettes/merz.jpeg)

--- 

### Munch

![](palettes/munch-source.jpeg)
![](palettes/munch.jpeg)

--- 

### OKeeffe

![](palettes/okeeffe-source.jpeg)
![](palettes/okeeffe.jpeg)

--- 

### Renoir

![](palettes/renoir-source.jpeg)
![](palettes/renoir.jpeg)

--- 

### Seurat

![](palettes/seurat-source.jpeg)
![](palettes/seurat.jpeg)

--- 

### Signac

![](palettes/signac-source.jpeg)
![](palettes/signac.jpeg)

--- 

### Vallotton

![](palettes/vallotton-source.jpeg)
![](palettes/vallotton.jpeg)

--- 

### VanGogh1

![](palettes/vangogh1-source.jpeg)
![](palettes/vangogh1.jpeg)

--- 

### VanGogh2

![](palettes/vangogh2-source.jpeg)
![](palettes/vangogh2.jpeg)

--- 

### Wellspring

![](palettes/wellspring.jpeg)







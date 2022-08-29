# MedBrewer

Provides a series of art-based colorful palettes.

Version 1.3.0 (8/29/2022)

## 1. Install Package
MedBrewer is now able to be downloaded through the GitLab [here](https://gitlab.com/bioinformatics-inem/r-custom-packages/MedBrewer).

1. Locate and download the file `MedBrewer_x.x.x.tar.gz` (the numbers indicate the version of the package).

2. In R Studio, choose `Packages>Install>Install from: Package Archive File (.tgz; .tar.gz)` 

![](src/install-from-file.jpg)

And navigate to the downloaded archive.

## 2. Usage

Use the `display_all` function to display the available palettes. One can use `category` to display a certain category of palettes (use `all`, `art` or `wesanderson`).

```{r}
display_all(sequential = FALSE, category = "all")

display_all(sequential = TRUE, category = "art")
```

The function `med.brewer` calls the palette. You can specify the number of colors to use (and interpolate colors), or choose between discrete or continuous palettes as exemplified below.

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


## 3. Palettes

Use the `display_all` function to display the available palettes. One can use `category` to display a certain category of palettes (use `all`, `art` or `wesanderson`).

```{r}
display_all(sequential = FALSE, category = "all")

display_all(sequential = TRUE, category = "art")
```

### Art 

#### Albers1

![](palettes/albers1-source.jpeg) 
![](palettes/albers1.jpeg)

--- 

#### Albers2

![](palettes/albers2-source.jpeg)
![](palettes/albers2.jpeg)

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

### Wes Anderson

#### DarjeelingLimited1

![](palettes/darjeeling-limited1-source.jpg)

---

#### DarjeelingLimited2

![](palettes/darjeeling-limited2-source.jpg)

---

#### FrenchDispatch

![](palettes/french-dispatch-source.jpg)


---

#### GrandBudapest

![](palettes/grand-budapest-hotel-source.jpg)

---

#### IsleOfDogs

![](palettes/isle-of-dogs-source.jpg)

---

#### MoonriseKingdom1

![](palettes/moonrise-kingdom1-source.jpg)

---

#### MoonriseKingdom2

![](palettes/moonrise-kingdom2-source.jpg)

---

#### Nescaffier

![](palettes/nescaffier-source.jpg)

---

#### RoyalTenenbaums

![](palettes/royal-tenenbaums-source.jpg)

---

#### Zissou1

![](palettes/zissou1-source.jpg)

---

#### Zissou2

![](palettes/zissou2-source.jpg)


---

### Others

#### Balanced

![](palettes/balanced.jpeg)

--- 

#### Biarritz

![](palettes/biarritz.jpeg)

--- 

#### Colorful

![](palettes/colorful.jpeg)

--- 

#### MED

![](palettes/med.jpeg)

--- 

#### Wellspring

![](palettes/wellspring.jpeg)







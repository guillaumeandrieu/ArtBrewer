# MedBrewer

Provides a series of art-based colorful palettes.

Version 1.3.0 (8/29/2022)

## 1. Install Package
MedBrewer is now able to be downloaded through the GitLab [here](https://gitlab.com/bioinformatics-inem/r-custom-packages/MedBrewer).

1. Locate and download the file `MedBrewer_x.x.x.tar.gz` (the numbers indicate the version of the package).

2. In R Studio, choose `Packages>Install>Install from: Package Archive File (.tgz; .tar.gz)` 

<img src="src/install-from-file.jpg" alt="install-from-file" width="300"/>


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
<img src="palettes/med.jpeg" alt="med" width="300"/>

```{r}
library(ggplot2)
ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
geom_violin() +
scale_fill_manual(values=med.brewer("Corot", 3))
```
<img src="src/example1.jpeg" alt="example1" width="300"/>

```{r}
ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
geom_point(size=2) +
scale_color_manual(values=med.brewer("Merz", 3))
```
<img src="src/example2.jpeg" alt="example2" width="300"/>

```{r}
ggplot(data=iris, aes(x=Species, y=Sepal.Width, color=Sepal.Width)) +
geom_point(size=3) +
scale_color_gradientn(colors=med.brewer("Albers1"))
```

<img src="src/example3.jpeg" alt="example3" width="300"/>



## 3. Palettes

Use the `display_all` function to display the available palettes. One can use `category` to display a certain category of palettes (use `all`, `art` or `wesanderson`).

```{r}
display_all(sequential = FALSE, category = "all")

display_all(sequential = TRUE, category = "art")
```

### Art 

#### Albers1

<img src="palettes/albers1-source.jpeg" alt="albers1" width="300"/>
<img src="palettes/albers1.jpeg" alt="albers1" width="300"/>

--- 

#### Albers2

<img src="palettes/albers2-source.jpeg" alt="albers2" width="300"/>
<img src="palettes/albers2.jpeg" alt="albers2" width="300"/>

--- 

### Corot

<img src="palettes/corot-source.jpeg" alt="corot" width="300"/>
<img src="palettes/corot.jpeg" alt="corot" width="300"/>

--- 

### Hokusai1

<img src="palettes/hokusai1-source.jpeg" alt="hokusai1" width="300"/>
<img src="palettes/hokusai1.jpeg" alt="hokusai1" width="300"/>

--- 

### Hokusai2

<img src="palettes/hokusai2-source.jpeg" alt="hokusai2" width="300"/>
<img src="palettes/hokusai2.jpeg" alt="hokusai2" width="300"/>

--- 

### Hokusai3

<img src="palettes/hokusai3-source.jpeg" alt="hokusai3" width="300"/>
<img src="palettes/hokusai3.jpeg" alt="hokusai3" width="300"/>

--- 

### Merz

<img src="palettes/merz-source.jpeg" alt="merz" width="300"/>
<img src="palettes/merz.jpeg" alt="merz" width="300"/>

--- 

### Munch

<img src="palettes/munch-source.jpeg" alt="munch" width="300"/>
<img src="palettes/munch.jpeg" alt="munch" width="300"/>

--- 

### OKeeffe

<img src="palettes/okeeffe-source.jpeg" alt="okeeffe" width="300"/>
<img src="palettes/okeeffe.jpeg" alt="okeeffe" width="300"/>

--- 

### Renoir

<img src="palettes/renoir-source.jpeg" alt="renoir" width="300"/>
<img src="palettes/renoir.jpeg" alt="renoir" width="300"/>


--- 

### Seurat

<img src="palettes/seurat-source.jpeg" alt="seurat" width="300"/>
<img src="palettes/seurat.jpeg" alt="seurat" width="300"/>

--- 

### Signac

<img src="palettes/signac-source.jpeg" alt="signac" width="300"/>
<img src="palettes/signac.jpeg" alt="signac" width="300"/>

--- 

### Vallotton

<img src="palettes/vallotton-source.jpeg" alt="vallotton" width="300"/>
<img src="palettes/vallotton.jpeg" alt="vallotton" width="300"/>

--- 

### VanGogh1

<img src="palettes/vangogh1-source.jpeg" alt="vangogh1" width="300"/>
<img src="palettes/vangogh1.jpeg" alt="vangogh1" width="300"/>

--- 

### VanGogh2

<img src="palettes/vangogh2-source.jpeg" alt="vangogh2" width="300"/>
<img src="palettes/vangogh2.jpeg" alt="vangogh2" width="300"/>

---

### Wes Anderson

#### DarjeelingLimited1

<img src="palettes/darjeeling-limited1-source.jpg" alt="darjeeling-limited1" width="300"/>

---

#### DarjeelingLimited2

<img src="palettes/darjeeling-limited2-source.jpg" alt="darjeeling-limited2" width="300"/>

---

#### FrenchDispatch

<img src="palettes/french-dispatch-source.jpg" alt="french-dispatch" width="300"/>

---

#### GrandBudapest

<img src="palettes/grand-budapest-hotel-source.jpg" alt="grand-budapest-hotel" width="300"/>

---

#### IsleOfDogs

<img src="palettes/isle-of-dogs-source.jpg" alt="isle-of-dogs" width="300"/>

---

#### MoonriseKingdom1

<img src="palettes/moonrise-kingdom1-source.jpg" alt="moonrise-kingdom1" width="300"/>

---

#### MoonriseKingdom2

<img src="palettes/moonrise-kingdom2-source.jpg" alt="moonrise-kingdom2" width="300"/>

---

#### Nescaffier

<img src="palettes/nescaffier-source.jpg" alt="Nescaffier" width="300"/>

---

#### RoyalTenenbaums

<img src="palettes/royal-tenenbaums-source.jpg" alt="royal-tenenbaums" width="300"/>

---

#### Zissou1

<img src="palettes/zissou1-source.jpg" alt="Zissou2" width="300"/>

---

#### Zissou2

<img src="palettes/zissou2-source.jpg" alt="Zissou2" width="300"/>

---

### Others

#### Balanced

<img src="palettes/balanced.jpeg" alt="Balanced" width="300"/>

--- 

#### Biarritz

<img src="palettes/biarritz.jpeg" alt="Biarritz" width="300"/>

--- 

#### Colorful
*Inspired by [Fabre et al, Nature 2022](https://doi.org/10.1038/s41586-022-04785-z)*

<img src="palettes/colorful.jpeg" alt="Colorful" width="300"/>

--- 

#### MED

<img src="palettes/med.jpeg" alt="MED" width="300"/>

--- 

#### Wellspring

<img src="palettes/wellspring.jpeg" alt="Wellspring" width="300"/>






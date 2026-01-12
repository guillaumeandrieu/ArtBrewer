# ArtBrewer

Provides a series of art-based palettes for R inspired by a certain vision of colors.

*Adapted from the work of [Blake R Mills](https://github.com/BlakeRMills/MetBrewer).*

<img src="www/badge-version.svg" alt="release" width="100"/>

# Content

- [Installation](#install-package)
- [Examples](#some-examples-of-usage)
- [Palettes](#palettes)


## Install Package

ArtBrewer can be installed from GitHub.

```r
install.packages("devtools")
devtools::install_github("guillaumeandrieu/ArtBrewer")
```

## Some examples of usage

Use the `display_all` function to display the available palettes. One can use `category` to display a certain category of palettes (use `all`, `art` or `wesanderson`).

```r
display_all(sequential = FALSE, category = "all")

display_all(sequential = TRUE, category = "art")
```

The function `art.brewer` calls the palette. You can specify the number of colors to use (and interpolate colors), or choose between discrete or continuous palettes as exemplified below.

```r
library(ArtBrewer)
art.brewer("Unicorn")
```
<img src="palettes/Unicorn.jpg" alt="unicorn" width="300"/>

```r
library(ggplot2)
ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
geom_violin() +
scale_fill_manual(values=art.brewer("Corot", 3))
```
<img src="www/example1.jpeg" alt="example1" width="300"/>

```r
ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
geom_point(size=2) +
scale_color_manual(values=art.brewer("Merz", 3))
```
<img src="www/example2.jpeg" alt="example2" width="300"/>

```r
ggplot(data=iris, aes(x=Species, y=Sepal.Width, color=Sepal.Width)) +
geom_point(size=3) +
scale_color_gradientn(colors=art.brewer("Vibrant"))
```

<img src="www/example3.jpeg" alt="example3" width="300"/>


## Palettes

Use the `display_all` function to display the available palettes. One can use `category` to display a certain category of palettes (use `all`, `art` or `wesanderson`).

```r
display_all(sequential = FALSE, category = "all")

display_all(sequential = TRUE, category = "art")
```

### All Palettes

<img src="palettes/all-palettes.jpeg" alt="all-palettes" width="700"/>


### Art 

#### Albers1

<img src="palettes/albers1-source.jpeg" alt="albers1" width="300"/>
<img src="palettes/Albers1.jpg" alt="albers1" width="300"/>

--- 

#### Albers2

<img src="palettes/albers2-source.jpeg" alt="albers2" width="300"/>
<img src="palettes/Albers2.jpg" alt="albers2" width="300"/>

---

#### Basquiat

<img src="palettes/basquiat-source.jpg" alt="Untitled V from The Figures Portfolio, 1982/2023" width="300"/>
<img src="palettes/Basquiat.jpg" alt="basquiat" width="300"/>


---

### Corot

<img src="palettes/corot-source.jpeg" alt="corot" width="300"/>
<img src="palettes/Corot.jpg" alt="corot" width="300"/>

--- 

### Edelfelt1

<img src="palettes/edelfelt1-source.jpg" alt="Edelfelt" width="300"/>
<img src="palettes/Edelfelt1.jpg" alt="Boys Playing on the Shore - Edelfelt" width="300"/>

--- 


### Edelfelt2

<img src="palettes/edelfelt2-source.jpg" alt="corot" width="300"/>
<img src="palettes/Edelfelt2.jpg" alt="Under the Birches - Edelfelt" width="300"/>

--- 

### Hokusai1

<img src="palettes/hokusai1-source.jpeg" alt="hokusai1" width="300"/>
<img src="palettes/Hokusai1.jpg" alt="hokusai1" width="300"/>

--- 

### Hokusai2

<img src="palettes/hokusai2-source.jpeg" alt="hokusai2" width="300"/>
<img src="palettes/Hokusai2.jpg" alt="hokusai2" width="300"/>

--- 

### Hokusai3

<img src="palettes/hokusai3-source.jpeg" alt="hokusai3" width="300"/>
<img src="palettes/Hokusai3.jpg" alt="hokusai3" width="300"/>

--- 

### Hopper

<img src="palettes/hopper-source.jpg" alt="Nighthawks by Edward Hopper 1942" width="300"/>
<img src="palettes/Hopper.jpg" alt="hokusai3" width="300"/>

--- 

### Klimt

<img src="palettes/klimt-source.jpg" alt="Portrait of Adele Bloch-Bauer I (1907)" width="300"/>
<img src="palettes/Klimt.jpg" alt="Klimt" width="300"/>

--- 

### Leslie1

<img src="palettes/leslie1-source.jpg" alt="Ellen's Island - Charles Leslie" width="300"/>
<img src="palettes/Leslie1.jpg" alt="leslie1" width="300"/>

--- 


### Leslie2

<img src="palettes/leslie2-source.jpeg" alt="leslie2" width="300"/>
<img src="palettes/Leslie2.jpg" alt="leslie2" width="300"/>

--- 

### Matisse1

<img src="palettes/matisse1-source.jpg" alt="Zorah sur la terrasse (1912-1913) - Henri Matisse" width="300"/>
<img src="palettes/Matisse1.jpg" alt="monet" width="300"/>

--- 

### Matisse2

<img src="palettes/matisse2-source.jpg" alt="La vue de la fenêtre (1912) - Henri Matisse" width="300"/>
<img src="palettes/Matisse2.jpg" alt="monet" width="300"/>

---

### Monet

<img src="palettes/monet-source.jpg" alt="Les Nymphéas : Reflets verts - Claude Monet" width="300"/>
<img src="palettes/Monet.jpg" alt="monet" width="300"/>

--- 

### Merz

<img src="palettes/merz-source.jpeg" alt="merz" width="300"/>
<img src="palettes/Merz.jpg" alt="merz" width="300"/>

--- 

### Munch

<img src="palettes/munch-source.jpeg" alt="munch" width="300"/>
<img src="palettes/Munch.jpg" alt="munch" width="300"/>

--- 

### OKeeffe

<img src="palettes/okeeffe-source.jpeg" alt="okeeffe" width="300"/>
<img src="palettes/OKeeffe.jpg" alt="okeeffe" width="300"/>

--- 

### Picasso Blue

<img src="palettes/picasso-blue-source.jpeg" alt="The Tragedy, 1903" width="300"/>
<img src="palettes/PicassoBlue.jpg" alt="Picasso Blue" width="300"/>

--- 

### Renoir

<img src="palettes/renoir-source.jpeg" alt="renoir" width="300"/>
<img src="palettes/Renoir.jpg" alt="renoir" width="300"/>


--- 

### Seurat

<img src="palettes/seurat-source.jpeg" alt="seurat" width="300"/>
<img src="palettes/Seurat.jpg" alt="seurat" width="300"/>

--- 

### Seurat2

<img src="palettes/seurat2-source.jpeg" alt="Le cirque - Georges Seurat" width="300"/>
<img src="palettes/Seurat2.jpg" alt="seurat" width="300"/>

--- 

### Signac

<img src="palettes/signac-source.jpeg" alt="signac" width="300"/>
<img src="palettes/Signac.jpg" alt="signac" width="300"/>

--- 

### Signac2

<img src="palettes/signac2-source.jpg" alt="Femmes au puits (1892) - Paul Signac" width="300"/>
<img src="palettes/Signac2.jpg" alt="signac" width="300"/>

--- 

### Turner

<img src="palettes/turner-source.jpg" alt="The Fighting Temeraire tugged to her last berth to be broken up, 1838" width="300"/>
<img src="palettes/Turner.jpg" alt="turner" width="300"/>

--- 


### Vallotton

<img src="palettes/vallotton-source.jpeg" alt="vallotton" width="300"/>
<img src="palettes/Vallotton.jpg" alt="vallotton" width="300"/>

--- 

### VanGogh1

<img src="palettes/vangogh1-source.jpeg" alt="vangogh1" width="300"/>
<img src="palettes/VanGogh1.jpg" alt="vangogh1" width="300"/>

--- 

### VanGogh2

<img src="palettes/vangogh2-source.jpeg" alt="vangogh2" width="300"/>
<img src="palettes/VanGogh2.jpg" alt="vangogh2" width="300"/>

---

### Vermeer

<img src="palettes/vermeer-source.jpg" alt="Het melkmeisje, circa 1658" width="300"/>
<img src="palettes/Vermeer.jpg" alt="Vermeer" width="300"/>

--- 

### Wes Anderson

#### DarjeelingLimited1

<img src="palettes/darjeeling-limited1-source.jpg" alt="darjeeling-limited1" width="300"/>
<img src="palettes/DarjeelingLimited1.jpg" alt="darjeeling-limited1" width="300"/>

---

#### DarjeelingLimited2

<img src="palettes/darjeeling-limited2-source.jpg" alt="darjeeling-limited2" width="300"/>
<img src="palettes/DarjeelingLimited2.jpg" alt="darjeeling-limited1" width="300"/>

---

#### FrenchDispatch

<img src="palettes/french-dispatch-source.jpg" alt="french-dispatch" width="300"/>
<img src="palettes/FrenchDispatch.jpg" alt="french-dispatch" width="300"/>

---

#### GrandBudapest

<img src="palettes/grand-budapest-hotel-source.jpg" alt="grand-budapest-hotel" width="300"/>
<img src="palettes/GrandBudapest.jpg" alt="grand-budapest-hotel" width="300"/>

---

#### IsleOfDogs

<img src="palettes/isle-of-dogs-source.jpg" alt="isle-of-dogs" width="300"/>
<img src="palettes/IsleOfDogs.jpg" alt="isle-of-dogs" width="300"/>

---

#### MoonriseKingdom1

<img src="palettes/moonrise-kingdom1-source.jpg" alt="moonrise-kingdom1" width="300"/>
<img src="palettes/MoonriseKingdom1.jpg" alt="moonrise-kingdom1" width="300"/>

---

#### MoonriseKingdom2

<img src="palettes/moonrise-kingdom2-source.jpg" alt="moonrise-kingdom2" width="300"/>
<img src="palettes/MoonriseKingdom2.jpg" alt="moonrise-kingdom2" width="300"/>

---

#### Nescaffier

<img src="palettes/nescaffier-source.jpg" alt="Nescaffier" width="300"/>
<img src="palettes/Nescaffier.jpg" alt="nescaffier" width="300"/>

---

#### RoyalTenenbaums

<img src="palettes/royal-tenenbaums-source.jpg" alt="royal-tenenbaums" width="300"/>
<img src="palettes/RoyalTenenbaums.jpg" alt="royal-tenenbaums" width="300"/>

---

#### Zissou1

<img src="palettes/zissou1-source.jpg" alt="Zissou1" width="300"/>
<img src="palettes/Zissou1.jpg" alt="Zissou1" width="300"/>

---

#### Zissou2

<img src="palettes/zissou2-source.jpg" alt="Zissou2" width="300"/>
<img src="palettes/Zissou2.jpg" alt="Zissou2" width="300"/>

---

### Movies

#### Amelie

<img src="palettes/amelie-poulain.jpg" alt="amelie-source" width="300"/> 
<img src="palettes/Amelie.jpg" alt="amelie" width="300"/>

--- 

#### Blade Runner 2049

<img src="palettes/blade-runner-2049-source.jpg" alt="blade-runner-2049-source" width="300"/>
<img src="palettes/BladeRunner2049.jpg" alt="blade-runner-2049" width="300"/>

--- 

### Others

#### Unicorn

<img src="palettes/unicorn-source.jpg" alt="unicorn" width="300"/>
<img src="palettes/Unicorn.jpg" alt="Unicorn" width="300"/>

---

#### Vibrant

<img src="palettes/Vibrant.jpg" alt="Vibrant" width="300"/>

--- 

#### Balanced

<img src="palettes/Balanced.jpg" alt="Balanced" width="300"/>

--- 

#### Biarritz

<img src="palettes/Biarritz.jpg" alt="Biarritz" width="300"/>

--- 

#### Colorful
*Inspired by [Fabre et al, Nature 2022](https://doi.org/10.1038/s41586-022-04785-z)*

<img src="palettes/Colorful.jpg" alt="Colorful" width="300"/>

--- 

#### MED

<img src="palettes/MED.jpg" alt="MED" width="300"/>

--- 

#### Wellspring

<img src="palettes/Wellspring.jpg" alt="Wellspring" width="300"/>






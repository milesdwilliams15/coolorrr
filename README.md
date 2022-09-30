# coolorrr <img src="inst/logo.png" align="right" height="130" />

![R-version](https://img.shields.io/badge/R%20%3E%3D-3.4.3-brightgreen)
![updated](https://img.shields.io/badge/last%20update-09--30--2022-brightgreen)
![version](https://img.shields.io/badge/version-0.0.1.2100-brightgreen)
![license](https://img.shields.io/badge/license-MIT-red)
![encoding](https://img.shields.io/badge/encoding-UTF--8-red)
[![orchid](https://img.shields.io/badge/ORCID-0000--0003--0192--5542-brightgreen)](https://orcid.org/0000-0003-0192-5542)

A package to support easy porting and usage of custom color palettes for ggplot.

## Installation

```
# install.packages("devtools")
devtools::install_github("milesdwilliams15/coolorrr")
```

## Usage

The `{coolorrr}` package provides tools to make the process of porting and using custom color palettes with `ggplot()` easier. The main functions are:

  - `set_palette()`
  - `ggpal()`
  
The first function must be run before you can use `ggpal()`. It sets up four palettes (with default selections for each):

  - A qualitative palette
  - A diverging palette
  - A sequential palette
  - A qualitative palette for two cases
  
The function is meant to make working with color palettes you can make for free at [https://coolors.co/](https://coolors.co/) easy and straightforward. After you make a color palette or choose from the selection of popular choices on the site, simply copy the url for the page, paste it as a character string to the relevant palette type in `set_theme()` and run it. `ggpal()` will then apply your chosen theme for the relevant palette type.

## Example

```
library(ggplot2)
library(coolorrr)

set_palette() # with defaults
p <- ggplot(mtcars) +
  aes(x = wt,
      y = mpg,
      color = as.factor(cyl)) +
  geom_point() # basic output
  
p + # custom output with ggpal()
  ggpal(type = "qualitative",
        aes = "color")
```

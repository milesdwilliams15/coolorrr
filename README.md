# coolorrr <img src="inst/logo.png" align="right" height="130" />

![R-version](https://img.shields.io/badge/R%20%3E%3D-3.4.3-brightgreen)
![updated](https://img.shields.io/badge/last%20update-12--17--2022-brightgreen)
![version](https://img.shields.io/badge/version-0.0.1.300-brightgreen)
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
  - `set_theme()`
  - `ggpal()`
  - `coolors()`
  
The first function must be run before you can use `ggpal()`. It sets up four palettes (with default selections for each):

  - A qualitative palette
  - A diverging palette
  - A sequential palette
  - A qualitative palette for two cases
  
The function is meant to make working with color palettes you can make for free at [https://coolors.co/](https://coolors.co/) easy and straightforward. After you make a color palette or choose from the selection of popular choices on the site, simply copy the url for the page, paste it as a character string to the relevant palette type in `set_palette()` and run. `ggpal()` will then apply your chosen theme for the relevant palette type when you call it.

To use the default values simply run:

```
set_palette()
```

Alternatively, to use a custom palette from coolors.co, simply drop in the url. For instance, here's a qualitative palette I picked: [https://coolors.co/ee6352-08b2e3-efe9f4-57a773-484d6d](https://coolors.co/ee6352-08b2e3-efe9f4-57a773-484d6d).

To use it, I would simply run:

```
set_palette(qualitative = "https://coolors.co/ee6352-08b2e3-efe9f4-57a773-484d6d")
```

You aren't restricted to only using palettes from coolors.co. You may also input your own "manually." You can do this by setting `from_coolors = FALSE` and then providing a vector of colors. For example:

```
set_palette(qualitative = c("royalblue", "firebrick", "forestgreen", "gold", "orange"),
            from_coolors = FALSE)
```

Note: if you are setting multiple custom palettes, all those palettes must be in the same format---i.e., either all must be from coolors.co or a vector of hexidecimal color codes or color names. If you wanted to have a mixed palette, you can use the `coolors()` function on the url from coolors.co to extract the color codes and convert them to a vector. 

For instance, say we were to set the qualitative palette using color names and the two-case qualitative palette as a custom palette set at coolors.co. We would write:

```
set_palette(qualitative = c("royalblue", "firebrick", "forestgreen", "gold", "orange"),
            binary = coolors("https://coolors.co/ee6352-08b2e3"),
            from_coolors = FALSE)
```

After you've set your palettes, you can use `ggpal()` using the `+ ggpla()` syntax to update the default palettes used by `ggplot()` for aesthetic color or fill mapping. `ggpal()` has three basic commands and also allows you to pass any other commands to standard `{ggplot2}` functions that `ggpal()` calls under the hood.

  - `type`: specifies whether the palette to apply is for the qualitative, diverging, sequential, or binary palette;
  - `aes`: specifies whether the palette should be applied for the color or fill aesthetic;
  - `midpoint`: specifies the midpoint value if the diverging palette is used.

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
```

![image](https://user-images.githubusercontent.com/23504082/193629762-de378e56-1395-4cb6-9422-59ce82d18dda.png)

```
p + # custom output with ggpal()
  ggpal(type = "qualitative",
        aes = "color")
```

![image](https://user-images.githubusercontent.com/23504082/193629482-62f1283c-05b5-4394-8cc4-5a92a8cb73b2.png)


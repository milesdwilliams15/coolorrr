# coolorrr <img src="inst/logo.png" align="right" height="130" />

![R-version](https://img.shields.io/badge/R%20%3E%3D-3.4.3-brightgreen)
![updated](https://img.shields.io/badge/last%20update-09--30--2022-brightgreen)
![version](https://img.shields.io/badge/version-0.0.1.2100-brightgreen)
![license](https://img.shields.io/badge/license-MIT-red)
![encoding](https://img.shields.io/badge/encoding-UTF--8-red)
[![orchid](https://img.shields.io/badge/ORCID-0000--0003--0192--5542-brightgreen)](https://orcid.org/0000-0003-0192-5542)

A package to support easy porting and usage of custom color palettes for ggplot.

```
library(ggplot2)
library(coolorrr)

set_palette()
ggplot(mtcars) +
  aes(x = wt,
      y = mpg,
      color = as.factor(cyl)) +
  geom_point() +
  ggpal(type = "qualitative",
        aes = "color")
```

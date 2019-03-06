# `university`
🎓🖍️ A package for ggplot2 color palettes of Colleges/Universities

## Introduction
Most institutions of higher education have some sort of official branding color palette. Some places (e.g. Princeton) only specify one color (plus black and white) so those are omitted. Other institutions have long lists of secondary and tertiary branding colors, sometimes whimsically named after campus landmarks. These are included in the package. 

The idea is that while a student at such university, you may wish to color your graphs to reflect your institution (e.g. in student presentations of data) and this should ease that process somewhat. 

Code liberally stolen from the excellent `ggsci` package, with additional code from `wesanderson` for presentation of palettes. 

## Installation

You should be able to install via the typical github installation procedure: 
```
# install.packages("devtools")
devtools::install_github("McCartneyAC/university")
```

## Usage
Attach to the end of a `ggplot2` call to adjust the colors (or fill) as usual. 
```
plot1 <- ggplot(
  subset(diamonds, carat >= 2.2),
  aes(x = table, y = price, colour = cut)
) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "loess", alpha = 0.05, size = 1, span = 1) +
  theme_bw()

plot1 + scale_color_harvard()
```
![example](https://github.com/McCartneyAC/university/blob/master/images/example.png?raw=true)



## Available Palettes:
I am adding colleges as I find their official-marketing color palettes. Request yours by issue memo with the list of colors to be added. 

Otherwise, here they are:

### American Univesity
![American Univesity](https://github.com/McCartneyAC/university/blob/master/images/american.png?raw=true)
### Brown University
![Brown University](https://github.com/McCartneyAC/university/blob/master/images/brownu.png?raw=true)
### Duke
![Duke](https://github.com/McCartneyAC/university/blob/master/images/duke.png?raw=true)
### Georgetown
![Georgetown](https://github.com/McCartneyAC/university/blob/master/images/georgetown.png?raw=true)
### Harvard
![Harvard](https://github.com/McCartneyAC/university/blob/master/images/harvard.png?raw=true)
### New York University
![New York University](https://github.com/McCartneyAC/university/blob/master/images/nyu.png?raw=true)
### Stanford
![Stanford](https://github.com/McCartneyAC/university/blob/master/images/stanford.png?raw=true)
### University of Virginia
![University of Virginia](https://github.com/McCartneyAC/university/blob/master/images/uva.png?raw=true)
### Virginia Tech
![Virginia Tech](https://github.com/McCartneyAC/university/blob/master/images/vatech.png?raw=true)
### William & Mary
![William & Mary](https://github.com/McCartneyAC/university/blob/master/images/wm.png?raw=true)
### Yale
![Yale](https://github.com/McCartneyAC/university/blob/master/images/yale.png?raw=true)

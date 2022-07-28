# Graphic Design with ggplot2: How to Create Engaging and Complex Visualizations in R

### rstudio::conf 2022

by Cédric Scherer

------------------------------------------------------------------------

:spiral_calendar: July 25 and 26, 2022  
:alarm_clock: 09:00 - 17:00  
:hotel: National Harbor 4/5  
:writing_hand: [rstd.io/conf](http://rstd.io/conf)

------------------------------------------------------------------------

## Overview

Creating engaging and accessible data visualizations of high quality in an efficient and preferably reproducible way is an essential tool in a data scientist's toolbox. After completing the course, participants will have a solid understanding of data visualization principles and the functionality of the ggplot2 graphics library and helpful extension libraries to create highly customized graphics without the need for post-processing.

We will discuss the main concepts of the grammar of graphics and use hands-on examples to explore ggplot2’s utility to create multi-layered, more complex graphs. The workshop covers a short overview of the basics of ggplot2 and quickly focuses on the most important steps and helpful tips to create visually appealing and complex graphics both in theory and practice. The power of ggplot2 will be illustrated with advanced real–life examples that help to understand data visualization principles and useful coding tricks.

The course covers complex code examples that are suited for more experienced ggplot2 users but designed to be informative for participants with minimal prior experience in ggplot2 and data visualization. As part of the training, attendees can download the course material from the course webpage for future reference.

## Learning objectives

-   Understanding the general concepts of ggplot2.
-   Learning the many options of customizing a ggplot.
-   Gaining the major steps need to create engaging graphics.
-   Being able to generate complex plots without th need of post-processing.

## Is this course for me?

This course will be appropriate for you if you answer yes to these questions:

-   Do you aim to build graphics in a fully reproducible way without the need to manually adjust details afterwards?

-   Do you enjoy using the {ggplot2} package but are interested in doing more with it?

-   Would you like to learn how to improve future data visualizations in terms of accessibility, impact, and complexity?

## Prework

The workshop will also cover the basic logic of ggplot2 and its compontents. However, some pre-knowledge on how the package works is beneficial for following the examples and for the group exercises. A good overview is provided might by the “First Steps” chapter of the ggplot2 book by Hadley Wickham et al.: <https://ggplot2-book.org/getting-started.html>

## Requirements

The example codes and the hands-on workshop parts are run in the Rstudio cloud. Thus, nothing but a laptop is needed.

If you want to run the workshop content locally on your machine, please make sure to install a suitable IDE (Rstudio, VS Code or others), a recent version of R (4.1+) and the following packages and typefaces.

### R Packages Installation

-   tidyverse
    -   ggplot2
    -   readr
    -   tibble
    -   dplyr
    -   tidyr
    -   forcats
    -   stringr
-   lubridate
-   here
-   systemfonts
-   magick
-   scales
-   grid
-   grDevices
-   viridis
-   colorblindr
-   colorspace
-   RColorBrewer
-   rcartocolor
-   scico
-   ggsci
-   ggthemes
-   nord
-   MetBrewer
-   ggrepel
-   ggforce
-   ggtext
-   ggdist
-   ggbeeswarm
-   gghalves
-   ggblur
-   patchwork
-   palmerpenguins
-   rnaturalearth
-   sf
-   rmapshaper

#### Run this code to install the packages if needed:

    packages <- c(
      "ggplot2", "readr", "tibble", "tidyr", "forcats", "stringr",
      "lubridate", "here", "systemfonts", "magick", "scales", "grid",
      "grDevices", "colorspace", "viridis", "RColorBrewer", "rcartocolor",
      "scico", "ggsci", "ggthemes", "nord", "MetBrewer", "ggrepel",
      "ggforce", "ggtext", "ggdist", "ggbeeswarm", "gghalves", "patchwork", 
      "palmerpenguins", "rnaturalearth", "sf", "rmapshaper", "devtools"
    )

    install.packages(setdiff(packages, rownames(installed.packages())))  

    ## install {colorblindr} and requirements
    remotes::install_github("wilkelab/cowplot")
    remotes::install_github("clauswilke/colorblindr")

### Typeface Installation

We will make use of custom fonts. If you want to follow all contents, make sure the following typefaces are installed:

-   Roboto Condensed: [fonts.google.com/specimen/Roboto+Condensed](www.fonts.google.com/specimen/Roboto+Condensed)
-   Cabinet Grotesk: [fontshare.com/fonts/cabinet-grotesk](www.fontshare.com/fonts/cabinet-grotesk)
-   Tabular: [fontshare.com/fonts/tabular](www.fontshare.com/fonts/tabular)
-   Boska: [fontshare.com/fonts/boska](www.fontshare.com/fonts/boska)
-   Pally: [fontshare.com/fonts/pally](www.fontshare.com/fonts/pally)

*For Mac OS users:* Please make sure that [XQuartz is installed](https://www.xquartz.org/) which is needed to use the cairo pdf device.

## Instructor

Cédric Scherer is a graduated computational ecologist with a passion for design. After his PhD, he combined his expertise in analyzing and visualizing large data sets in R with his passion to become an independent data visualization designer and specialist. Cédric has created visualizations across all disciplines, purposes, and styles and regularly teaches data visualization principles, the R programing language, and ggplot2. Due to regular participation in social data challenges such as #TidyTuesday, he is now well known for complex and visually appealing figures, entirely made with ggplot2, that look as if they have been created with a vector design tool.

## Running the workshop with Docker

General requirements for running the workshop materials with Docker:
- Docker desktop or equivalent
- Clone this repository or the orignal workshop repository and copy the `docker-compose.yml` file to your local machine to launch the Docker container
- Set the following three environment variables:
    - `GGPLOT2_WORKSHOP_IMAGE` - The project's image name (currently set as `rkrispin/ggplot2_workshop:dev.0.0.0.9000`)
    - `GGPLOT2_WORKING_WORKING_DIR` - The path on your local machine for the workshop folder. The `docker-compose` will mount the folder to the container enable you to sync the changes with your local folder
    - `RSTUDIO_CONFIG_PATH` - The path for your RStudio config files to load your setting (color theme, code snippet, etc) with the RStudio server inside the container
- Have port 8787 available

### Setting environment variables

To launch the docker container with `docker-compose` command, you will have to set the following variables into your `bash` script (or manually set the variables from your terminal):

``` shell
export GGPLOT2_WORKING_WORKING_DIR=YOUR_LOCAL_PATH/ggplot2-graphic-design
export GGPLOT2_WORKSHOP_IMAGE=rkrispin/ggplot2_workshop:dev.0.0.0.9000
export RSTUDIO_CONFIG_PATH=$HOME/.config/rstudio
```

**Note:** On the above setting change: 
- For the `GGPLOT2_WORKING_WORKING_DIR` variable change `YOUR_LOCAL_PATH` with your local path for the ggplot2-graphic-design folder (or any other name you used to store the workshop materials)
- For the `RSTUDIO_CONFIG_PATH` variable the `$HOME` is the default root setting, please change or modify according to your local machine setting (on Mac and Linux should be, by default, the root folder setting) 


Once set, use the `docker-compose` command to luanch the Docker container:
``` shell
docker-compose up -d
```

You should expect the following output:

``` shell
[+] Running 2/2
 ⠿ Network ggplot2_workshop_default      Created                                                  0.1s
 ⠿ Container ggplot2_workshop-rstudio-1  Started
```

Next, on your browser open [http://localhost:8787/](http://localhost:8787/).



------------------------------------------------------------------------

![](https://i.creativecommons.org/l/by/4.0/88x31.png) This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

---
title: New version of tidyLPA (v 1.0.5) for carrying out Latent Profile Analysis using either open-source or commercial software
author: ''
date: '2020-02-09'
slug: new-version-of-tidylpa-1-0-5
categories: []
tags: []
---

There is a new version of tidyLPA (v 1.0.5) available on CRAN (see [here](https://cloud.r-project.org/web/packages/tidyLPA/index.html))

The website, with a lot more information than is on the page above, is [here](https://data-edu.github.io/tidyLPA/).

Changes include:

* Add function to calculate Lo-Mendell-Rubin LR test
* Add plot_bivariate function
* Set default for plot_profiles(add_line = FALSE), because the line does not 
  convey any meaningful information
* Fix bug re. passing additional parameters to mplusObject()
* remove messages about deprecated functions

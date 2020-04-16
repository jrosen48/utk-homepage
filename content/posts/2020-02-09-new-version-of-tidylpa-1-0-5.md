---
title: New version of tidyLPA (v 1.0.5) for carrying out Latent Profile Analysis using either open-source or commercial software
author: ''
date: '2020-02-09'
slug: new-version-of-tidylpa-1-0-5
categories: []
tags: []
---

There is a new version of tidyLPA (v 1.0.5) available on CRAN (see [here](https://cloud.r-project.org/web/packages/tidyLPA/index.html)).

The website, with a lot more information than is on the page above, is [here](https://data-edu.github.io/tidyLPA/).

Changes include:

* Add function to calculate Lo-Mendell-Rubin LR test
* Add `plot_bivariate()`
* Set default for `plot_profiles(add_line = FALSE)`, because the line does not 
  convey any meaningful information
* Fix bug re. passing additional parameters to `mplusObject()`
* Remove messages about deprecated functions (those which were last used in v < 1.0.0)
* Other minor changes, including addressing bugs from [the tidyLPA mailing list](https://groups.google.com/forum/#!forum/tidylpa), and improving documentation

As an aside, tidyLPA is being cited in a number of papers - include five already in 2020! - which is exciting to all of us who have contributed to it. You can see what papers have cited it [here](https://scholar.google.com/scholar?cites=375165318739776322&as_sdt=5,43&sciodt=0,43&hl=en).
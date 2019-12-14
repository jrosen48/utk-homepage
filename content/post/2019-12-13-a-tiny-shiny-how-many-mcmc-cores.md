---
title: 'A tiny (Shiny) app: How Many (MCMC) Cores?'
author: ''
date: '2019-12-13'
slug: a-tiny-shiny-how-many-mcmc-cores
categories: []
tags: []
---

I made a tiny Shiny interactive web application to assist in choosing how many cores (chains) to specify for Markov Chain Monte Carlo (MCMC) estimation (like that available through the [brms R package](https://cran.r-project.org/web/packages/brms/index.html)).

I was interested in this beacuse I recently accessed [the high-performance computing service](https://www.jics.utk.edu/acf) through my university, and was wondering just how many cores (or processors) I could use, keeping in mind that while it seems that way, resources aren't limitless (note: I actually have no idea what the limit is!).

A link to the app is here: https://jmichaelrosenberg.shinyapps.io/how-many-cores/

Here is a screenshot:

![screenshot-of-app](/post/2019-12-13-a-tiny-shiny-how-many-mcmc-cores_files/Screen Shot 2019-12-13 at 7.31.44 PM.png)

The source is here: https://github.com/jrosen48/how-many-cores
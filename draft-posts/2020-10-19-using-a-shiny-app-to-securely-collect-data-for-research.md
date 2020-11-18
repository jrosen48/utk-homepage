---
title: Using a Shiny app to securely collect data for research
author: Joshua Rosenberg
date: '2020-10-19'
slug: using-a-shiny-app-to-securely-collect-data-for-research
categories:
  - r
tags: []
---

I've used [Shiny apps](https://www.shinyapps.io/) (interactive web application which you can create with R that use R code/packages) a number of times.

Here's an example of one: http://konfound-it.com/

For a new project, it seemed like collecting data from people who use the app would be useful, and this seemed easy enough to do, and, in short, it is, especially if using an excellent tool like [{shinylogs}](https://github.com/dreamRs/shinylogs/issues). But there are a few challenges to overcome; one key one was that I was unable to find an existing package or technique that would work for apps hosted by RStudio's hosting service, [shinyapps.io](https://www.shinyapps.io/). In addition, I wanted any data to be saved securely (and directly) to the IRB-approved platform for data storage---which was, in this case, Box. So, I set out to do this manually, and learned a few things about Shiny which I'll post here. 

1. One key was determining what to collect and how to collect it. 

The app is here: [https://faast.shinyapps.io/generality-shiny/]. 
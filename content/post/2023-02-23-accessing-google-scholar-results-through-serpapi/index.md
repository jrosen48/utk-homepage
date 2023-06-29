---
title: Accessing Google Scholar results through serpAPI
author: ''
date: '2023-02-23'
slug: accessing-google-scholar-results-through-serpapi
categories: []
tags: []
---

I've been interested in open science and open access for awhile and I'm presently working on a project with my colleague [Dr. Enilda Romero-Hall](https://www.enildaromero.net/) and Dr. George Veletsianos on these topics. We have a chance to share some some early findings on the state of open access in education at this Spring's [Open Education Conference](https://openeducationconference.org/).

One part of the the work has involved usign a third-party serice that provides automated (i.e., via a programming language) access to Google Scholar results. It has taken _many_ iterations, but we have some python code that works well for accessing any _accessible versions_ of articles (based on a search using the article's title). It has seemed to work well, but we are presently validating the results. Anywho, the code to do just this is [here](https://github.com/jrosen48/serpapi-google-scholar-scraper/blob/main/serpapi-scholar.py).
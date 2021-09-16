---
title: Use RStudio Cloud for Teaching With Caution
author: Joshua Rosenberg
date: '2021-09-14'
slug: use-rstudio-cloud-for-teaching-with-caution
categories: []
tags: []
---

This past June, we used RStudio Cloud for the [LASER Institute](https://www.fi.ncsu.edu/projects/laser-institute/), an NSF-funded "institute" for early- and mid-career researchers interested in data science and learning analytics techniques.

On the first day, we experienced - and heard from participants about their experiences with a "getting started" task concerning - an issue with using RMarkdown documents within RStudio Cloud. In short, **RMarkdown documents cannot be used interactively within RStudio Cloud**. More specifically, if you re-run a code chunk in an RMarkdown document - think something like clicking the green arrow to the right of the code chunk twice - there stands a chance that the R session will disconnect. You'll effectively have to refresh your browser or open the project again. It's disruptive and concerning for experienced R users. For beginners, this kind of issue can be really poor for one's confidence. 

I'm open to input on some kind of user errors (mine or others) here, but I think a core feature of RMarkdown documents is that they can be both knit (to create PDF, HTML, or Word document output, for example) and used interactively. Especially for teaching, it is useful for learners to run, modify, and re-run code chunks.

After going back-and-forth with RStudio support, we learned that this is a bug with the RStudio IDE, but there is a fix. Namely, one can uncheck/turn off the "Save documents when editor loses input focus" setting, which can be done through the command palette (available on the Tools menu; see  Tools -> Show Command Palette). This has to be done on a per-project basis. It happened near constantly to us across users, projects, and types of code (e.g., whether we're creating a visualization using {ggplot2} or preparing the data to be used for that visualization with {dplyr}).

RStudio support noted in June that this would be addressed in the next major update to RStudio Cloud (in the next few weeks, we were messaged), but come September, it now appears that "it is likely to be quite a while, so potentially later next year, given the backlog of other fixes that also need to be addressed."

I love R and RStudio. 

Also, this makes RStudio Cloud very difficult to use out of the box for teaching, especially for beginners for whom changing a fairly uncommon setting for each project is an unideal place to begin: A big part of what makes RStudio Cloud great for beginners is that it makes it possible to quickly run, modify, and reason about the output of code. This is a big hiccup, and the lack of attention to it on the part of the (excellent) RStudio and RStudio Cloud team is concerning. **In short, use RStudio Cloud for teaching with great caution**, especially if you use RMarkdown documents to teach.

We appreciate the responsiveness of the RStudio Cloud tema to this, but the issue remains for the foreseeable future. 
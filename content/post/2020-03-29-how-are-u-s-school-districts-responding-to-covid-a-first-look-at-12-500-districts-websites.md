---
title: How are U.S. school districts responding to COVID? A first look at 12,500 districts'
  websites
author: ''
date: '2020-03-29'
slug: how-are-u-s-school-districts-responding-to-covid-a-first-look-at-12-500-districts-websites
categories: []
tags: []
---

Like many educational researchers (and teachers, parents, administrators . . . and kids), I have been wondering about how U.S. school districts are responding to the COVID-19 pandemic. There seemed to be a lot of variation, not only across U.S. states, but also within districts within states, and even within districts (and even within schools in districts!).

## Exploring how districts in Tennessee (and, soon, other states) are responding to COVID-19

One way I'm pursuing this is through a project wherein we are trying to document what every district in the state of Tennessee (and, possibly, soon, in other states) are doing to respond: Whether they are completely closed or they are still providing opportunities for students to learn; what kinds of teaching and learning and/or resources are provided to students (and their parents), and how districts are supporting students who might very reasonably not have, for instance, reliable Internet access at their home, or a computer that they can use to access resources (not to mention Zoom!).

## Exploring how districts across the US are responding to COVID-19

Another way I'm pursuing this is at a wider scale, but with a coarser lens. In particular, I tried to find out which U.S. districts had announcements, resources, or other information on their websites in light of COVID-19. 

The data, created by web-scraping all of the districts with URLs available through the [National Center for Education Statistics](https://nces.ed.gov/ccd/elsi/tableGenerator.aspx), is available here through the Open Science Framework: https://osf.io/2txjy/

I accessed the data using web-scraping. That code is here on GitHub: https://github.com/jrosen48/scraping-districts-covid

A cursory look at the data revealed a lot of variation between states (see below). 

![](/post/2020-03-29-how-are-u-s-school-districts-responding-to-covid-a-first-look-at-12-500-districts-websites_files/state-plot.png)

Overall, 71.3% of districts' sites referenced COVID-19 or Coronavirus.

Not represented on the map is the number of links on each districts' site that referenced COVID-19 or coronavirus; on average, each of the 12,500 districts included 1.50 (*SD* = 2.32) links, ostensibly to the kinds of pages (or documents - or images) with the kind of information that we are trying to find out in a finer-grained way for the state of Tennessee. 

Here's an RMarkdown document with the raw and aggregate data in a searchable form: https://rpubs.com/jmichaelrosenberg/covid

## *fin*

A few caveats: The National Center for Education Statistics shares data for approximately 18,000 districts in the U.S., but only 15,000 or so included URLs to the districts' site. I'm not sure whether those 3,000 without URLs available are different from those with URLs in important ways, but I'd like to figure this out. Additionally, for the 15,000 or so districts with URLs available, approximately 2,500 were not able to be accessed: The URLs may have changed, perhaps, or perhaps I made a mistake in processing the data. Lastly, searching the sites for the presence of COVID-19 or coronavirus is a very coarse approach. Many sites include news updates, for example, that are displayed in a way that this type of analysis would not detect (such as through a pop-up window, or via a news section of the website that is rendered with JavaScript). 

So, this data has some key limitations, but I've been inspired by researchers (in my area, education) doing what they can to support students and teachers; and by researchers in other areas sharing research and data related to COVID-19 in a fast and open data. This hardly holds a candle to those efforts, but, it (perhaps analyzed in further ways or when augmented with other data sources) may be useful to others who will dive in more deeply. Might districts that *relatively* successfully navigate this period be better prepared for the next disruptions? Do such districts develop *educational social distancing capital*? And if some districts navigate the present period better, how can those without sufficient resources be supported to provide more equal opportunities for students moving ahead?
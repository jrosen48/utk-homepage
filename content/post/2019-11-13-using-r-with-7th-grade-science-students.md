---
title: Using R with 7th-grade science students
author: ''
date: '2019-11-13'
slug: using-r-with-7th-grade-science-students
categories:
  - teaching
tags:
  - data-science-ed
---

Sparked by a collaboration with Bodong Chen, I've been working with a 7th-grade
science teacher, Alex Edwards, at a local school. We recently wrote about some 
of the take-aways from our work last year in a publication on "Tools and 
strategies for engaging students in analyzing and interpreting complex data 
sources." 

The article is going to be published in NSTA's *The Science Teacher* journal 
(a pre-print, of the article is [here](https://joshuamrosenberg.com/publications/rosenberg-edwards-chen-tst.pdf).

I haven't been to Alex's since last year but worked today to use R with his 7th-
grade science students. When we discussed what we wanted to do, we came to the 
conclusion that with the right support and tools, using R was not out of the 
question. We planned an activity that was focused on getting his students, who 
had used [CODAP](https://codap.concord.org/) with success, to try R. We tried a 
few things which, together, seemed to work well, or at least served as a first 
step. This post is a brief documentation of those things (and some ideas about) 
where to go next.

## Using R Studio Cloud

We used [R Studio Cloud](https://rstudio.cloud/), which students were able to login to with their Google 
accounts. The only information students had to provide was a username. I asked 
them to use any name they liked: they did not necessarily need to provide their 
first and last name (being 7th-graders, some students picked pretty funny 
names). I had setup a project ahead of time with the **tidyverse** installed. In 
short, R Studio Cloud just plain worked. I even messed up the URL, asking 
students to navigate to "cloud.rstudio.com"; students found the correct website
before I could correct myself.

## Using an R Markdown document

Using a strategy I have used in past workshops (e.g., [here](https://github.com/bretsw/aect19-workshop)), 
I setup an R Markdown document in R Studio Cloud. This document included some
examples that I could ask students to read, guess the function of, and run. In 
addition to code that students could do those things with, the document also 
includes sections labeled "try it out!". Here, parts of the code is incomplete 
or incorrect; in both cases, students need to write code in order for it to run.
For example, first, students had to select variables of their choosing using the 
**dplyr** `select()` function. In another, they had to write a filter statement;
later, they had to choose variable to represent in a **ggplot2** plot. Because
students could run and write their own code - and run code in multiple ways 
(i.e., clicking the green arrow beside a block of code; running the code by 
holding the control/command key and typing the return key; copying and pasting 
the code to to console) - this seemed to serve as an introduction to using code 
that was accessible but also not too simple (or different from using "real" R 
code).

## Using built-in (but complex) data

For this first activity, we used a built-in dataset. Because we used R Studio 
Cloud, it would likely have been almost as easy to read a data set which was 
uploaded to R Studio Cloud and then read into R Studio. Nevertheless, using 
built-in data meant that students could start to select, filter, and see the 
data quickly. We used a larger-sized data set (with more than 20,000 rows), 
which was complex enough for students to have questions (such as about what the 
variables represented and what specific values mean) about it. Having a complex
data set also let us point out that professionals use R for data sets like the 
one they were analyzing - as well as even larger and more complex data sets.

In sum, the activity worked albeit, as a very gradual introduction to using 
R. In combination with starting with modest goals, having the right tools 
(R Studio Cloud, R Markdown, and a suitable data set), I think, helped to make 
this work. 7th-graders can (start to) use R. The goal that Alex and I have is 
for students to be able to analyze data that they collect (and 
already-collected scientific data). As one encouraging piece of information, at 
the end of the class, a student asked when we would be using R again. When we 
do, I'll plan to write another post to serve as documentation of what we do
next that works well - and what does not. 

## fin 

If my assumption coming in to this activty was, "What can 7th-grade students 
do using R?", I think it now is "What can 7th-grade students *not* do with R?".
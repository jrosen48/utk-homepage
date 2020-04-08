---
title: Data Science in Education Using R by (and a little beyond) the numbers
author: ''
date: '2020-04-08'
slug: data-science-in-education-using-r-by-and-beyond-the-numbers
categories:
  - r
tags:
  - data-science-ed
---

[*Data Science in Education Using R*](http://datascienceineducation.com/) is done!

Here's us, right around when we clicked "send" on an email with links/attachments for what was a two-year project.

<p align="center">
![](/post/2020-04-08-data-science-in-education-using-r-by-and-beyond-the-numbers_files/image (1).png)
<p>

The project involved a lot of steps, and it is possible, particularly because of the way in which we wrote the book in the open, to describe the process *by the numbers*.

## Data Science in Education Using R by the numbers

It is possible to say something about this book by the numbers.

### GitHub

The book was written using which was written in [R Markdown](https://rmarkdown.rstudio.com/); from the start, the files were stored in [a GitHub repository for the project, `data-science-in-education`](https://github.com/data-edu/data-science-in-education).

- The first commit, or addition of content, to our [GitHub repository](https://github.com/data-edu/data-science-in-education) was **2018-02-03** (so, just over 26 months ago!)

- We made [**1,785** *additional commits*](https://github.com/data-edu/data-science-in-education/commits/master) to our repository

- Most of these commits were associated with one of [**363** pull requests](https://github.com/data-edu/data-science-in-education/pulls?q=is%3Apr+is%3Aclosed), or collections of commits, many of which were made to address an issue

- [**155** issues](https://github.com/data-edu/data-science-in-education/issues?q=is%3Aissue+is%3Aclosed) were filed to keep track of and address, well, issues

- [**15** individuals made contributions](https://github.com/data-edu/data-science-in-education/graphs/contributors) through commits to the repository (thank [you!](https://datascienceineducation.com/index.html#acknowledgements)); another five individuals contributed by filing issues

- [**144** individuals ["starred"](https://help.github.com/en/github/getting-started-with-github/saving-repositories-with-stars) the repository](https://github.com/data-edu/data-science-in-education/stargazers), and [**34** individuals ["forked"](https://help.github.com/en/github/getting-started-with-github/fork-a-repo) it](https://github.com/data-edu/data-science-in-education/network/members), to follow along with its progress

### The rendered book

We "rendered"" (and have continuously updated) the book as a website via Bookdown and, to submit to the publisher, as a number of Word documents, and (mostly) via Bookdown.

- The book has **20** chapters (check them out: http://datascienceineducation.com/)

- Its word count, depending on whether you use the [{wordcountaddin} R package](https://github.com/benmarwick/wordcountaddin), which does not count links to webpages and a few other parts of the text as words, or Microsoft Word, **76,745** (MS Word) or **77,470** ({wordcountaddin}) words

- There are **8,371** lines of code, which produce **5,257** lines of output and generate **44** figures and **two** tables that we formatted and exported as such (there are other tables are a part of those 5,257 lines of output)

### Slack

We also used Slack to stay in touch.

- We sent **12,809** messages; this includes messages sent by many others in the [dataedu Slack group](http://dataedu.slack.com/), many who contributed to the book

- **5,529** in an #authors channel; another **589** or so were in the #data-science-in-education channel for the book; and **711** were in other channels, including #general and, most of the remaining were messages between individuals

### Meeting

We met regularly.

- This is a bit harder to measure, because some of our meetings were not recorded in calendar invitations, and, later, once we setup calendar invitations, we sometimes decided we didn't need to meet, but . . . assuming that we met once every three weeks or so, we met roughly **30** times

## Beyond the numbers

The above *numbers tells a story, but only a part* of one, and maybe not the most important part. It is harder to quantify the story of the book: its premise, the challenges we faced, how we overcame them, and how the five of us who wrote it collectively shaped the direction and nature of it. Both our work styles, strengths and priorities, and the goals each of us had for the book worked together in a way that led to something that would have not worked, or led to an incomplete story, had any of us been missing.

In that way, neither the above numbers or the story of my experience alone begin to fully capture the process we took over the past two years. On that note, then, *thanks* [Ryan](https://ryanestrellado.netlify.com/), [Emily](https://www.emilybovee.com/), [Jesse](https://www.jessemaegan.com/), and [Isabella](https://ivelasq.rbind.io/). I cannot imagine a better group of co-authors (and friends) to write this book with; finding co-authors with whom you share a vision and with whom you can work together is *p* < .001.

It's probably worth mentioning that we met and got to know one another through Twitter and then Slack (apart from Emily and I, who knew the other through our graduate program at Michigan State University). It is hard for me to imagine *another way* through which five authors working in different (for many of us, changing) capacities in education could meet and decide to write an open book using tools that are primarily used in software development (git/GitHub) or writing technical books (bookdown). Doing this in the domain of education made this somewhat special, I think.

### Dedications

This is in [the Dedications section](https://datascienceineducation.com/index.html#dedications), but, this book is dedicated (for my part) to Katie, Jonah, Joel, Aaron, and Jess.

### Recognitions

I'd also like to recognize a few folks who - were they to read this - might be surprised: Thank you [Andrea Zellner](http://www.andrea-zellner.com/), for opening the door to my use of R, and Tenglong Li and [Matt Koehler](http://www.matt-koehler.com/) for encouraging and supporting me to grow as someone who uses R. Thanks to [Leigh Graves Wolf](http://www.leighgraveswolf.com/) for demonstrating what working in the open means.
Thanks to [Leigh Graves Wolf](http://www.leighgraveswolf.com/) for introducing me to the idea of sharing one's work in the open and why it matters, and to both Leigh and [Bodong Chen](https://bodong.me/) for exemplifying doing this; [a repository Bodong shared nearly seven years ago](https://github.com/meefen/twitter-hashtag-analytics) was the first I encountered by anyone in education, and was a bit of a revelation.

## Acknowledgments 

I'd also like to echo our acknowledgments to [those who contributed to the book](https://datascienceineducation.com/index.html#acknowledgements) in capacities other than as authors. These contributions made the book better in a way that only those coming to the topic from a similar perspective but different expertise can.

### Next steps

The book will be copy-edited and then proofed, and, then, will be available in print and e-book format. We'll have a few things to do, too; we plan to keep working together. In the short term, we want to document some of the technical aspects of rendering the book, especially where it comes to meeting the publisher specifications, now, while they're fresh in our minds. We'll continue to edit the book now and going forward - it's *alive*! - so, please feel free to make suggestions or edit the book. For now, you can find the book here: https://datascienceineducation.com/. Even after the book is published, the most up-to-date version will always be available there.
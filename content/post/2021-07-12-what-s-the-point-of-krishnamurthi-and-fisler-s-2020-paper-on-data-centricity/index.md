---
title: What's the point of Krishnamurthi and Fisler (2020)?
author: Joshua Rosenberg
date: '2021-07-12'
slug: what-s-the-point-of-krishnamurthi-and-fisler-s-2020-paper-on-data-centricity
categories: []
tags: []
---

This post is *alt peer review*. I describe my rationale for exploring alt peer review in [a previous post](https://joshuamrosenberg.com/post/2021/07/11/alt-peer-review-via-blogs-and-newsletters/); consider checking that out, first. In that post about what I mean by the question, "what's the point?". It's not pejorative!

The paper I read and am writing about is:

> Krishnamurthi, S., & Fisler, K. (2020). Data-centricity: a challenge and opportunity for computing education. *Communications of the ACM*, 63(8), 24-26. 

It's available from the ACM [here](https://dl.acm.org/doi/fullHtml/10.1145/3408056?casa_token=0zOqDPK1vlQAAAAA:cOtAyvLXLr6V2obFPj-HDpk3p2gx1ttMiJbwmC63ZjlVUvuz_ppae8hv-xULASEPqLtJ3tCmnrXa3A) and as a pre-print [here](http://cs.brown.edu/~sk/Publications/Papers/Published/kf-data-centric/paper.pdf).

I'll try writing about four things: 

1. what the paper says
2. what (I think) the point is
3. what criticisms I have
4. any reflections 

## 1. What the paper says

The rise of introduction to data science courses is an implicit critique of introduction to computer science courses. This section of the paper was what made me interested to read more:

> Data science works with real datasets that touch on real-world problems, rather than artificial starter problems based on numbers, strings, and arrays. In all of these ways, conventional CS1 courses appear inauthentic or irrelevant for data-facing students. Moreover, the end goal of conventional early CS courses is usually to prepare students for more CS courses, rather than to prepare them to continue to learn additional data-relevant programming content as their interests demand.

The paper takes up the notion that perhaps there _should be_ separate (from introduction to computer science) introduction to data science course, as is an emerging status quo. The authors note that this may also not be ideal for practical (duplication of courses or learning objectives within course) and technical (in data science contexts, program design and testing still matter, but these ideas/practices that are included in introduction to computer science courses are rarely included in introduction to data science courses) reasons.

The solution, the authors propose, is to make introduction to computer science courses more data-centric:

> We suggest that there is a strong alternative: to integrate data-science components into introductory computing.

Their next suggestion resonated to me as a former science teacher and an R (and a tidyverse) user, namely, data stored in row-column format is powerful (enough) and (can be) accessible to beginners:

> We should begin the curriculum in “data science” with some basic data engineering. That is, students begin right away with data sets of some complexity reflecting real-world questions. Perhaps surprisingly, we believe that even the choice of representation matters, and recommend focusing specifically on data represented in tabular
formats. 

Later in their coursework, students learn about other structures for their data - things that those of us who tried to learn to program (with a language like Javascript) but never got far off of the ground with may have been exposed to: lists, dictionaries, and arrays. 

Python has only really "worked" for me when I use tables via Pandas data frame objects---a structure very familiar to me as a former science teacher and an R user. Many years after first learning R, I began to learn about and use other data structures (within R---lists) and computing concepts (objects and classes), particularly to develop packages. 

## 2. What's the point?

Instead of independently teaching introduction to data science students to work with data stored in tables (think spreadsheets) and teaching introduction to computer science students to manipulate data in structures like lists, there may be benefits to considering these approaches together. Namely, there may be benefit to students who end up in _both_ classes to introducing students to working with data in table format and functions that are designed to solve real problems that one encounters when analyzing complex data. Later, students will likely benefit from learning about more abstract data structures, especially when they see the need for those. 

## 3. Critiques

Theis essay introduces big questions and changes to the curriculum, so there's not an easy research design that can test these conjectures. I recognize that this paper was published in the *Communications of the ACM* (Association of Computing Machinery), a magazine-journal read by many in computer science, but I'd like to read more about how these conjectures could be explored by educational researchers (or what research these computer science and computing education researchers have carried out on this!). In the strongest possible critique, this is a sound conjecture that we can test, similar to how the tidyverse set of packages (distinguished in part by their focus on operating on tables that share a consistent format) are designed for teaching, but which still need to be critically and constructively studied. (Note: [McNamara is studying this question](https://twitter.com/AmeliaMN/status/1347325295435530241)!). Perhaps addressing these questions is not the focus of this work; papers have many possible functions, including synthesizing other findings and theory to open up new areas of practice (and research).

Not a critique so much as a question: How do introduction to statistics classes fit into the picture that Krishnamurthi and Fisler paint? 

Again a question: Is the conversation the authors are starting with this piece on making the computer science curriculum more data-centric parallel to the argument from scholars in statistics and data science education to integrate computing into the data science curriculum---see [Nolan and Temple Lang (2010)](https://www.tandfonline.com/doi/abs/10.1198/tast.2010.09132?casa_token=EWnSjDBLOZwAAAAA:VXg_NeVePS15-LxyYUrzdgjcCAhA37UxFl-7A16RUEPWXU2pi-pxj84dHdtq5kW0V9Dlnev42Z2_) and [Horton et al. (2020)](https://www.tandfonline.com/doi/full/10.1080/10691898.2020.1862609)? 

Lastly, what can we say about the possible merit of this approach from a learning theories perspective? Introducing students to complex data and tools that can operate on that data; this has elements of the application of a _situated learning_ approach. I'm not sure what this implies and how it may differ from the focus on learning about building blocks of computing as is taught in (some/most?) introduction to computer science classes.

## 4. Reflections

How data science and computer science differ reminded me of how science and math classes at the K-12/pre-collegiate level differ. Science classes (can) involve the exploration of complex phenomena, whereas mathematics classes (often but not always) involve problems that are more idealized (and more amenable to solving mathematically), similar to how introduction to data science courses can involve analyzing complex data whereas introduction to computer science courses often involve using fabricated data to learn about data structures.

If interested in these topics (at the K-12 or post-secondary levels), I recommend reading the paper. Here are links to more of [Krishnamurthi's](https://cs.brown.edu/~sk/) and [Fisler's](http://cs.brown.edu/~kfisler/) work in computing education.
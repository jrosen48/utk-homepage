---
title: What's the point of Krishnamurthi and Fisler (2020)
author: R package build
date: '2021-07-12'
slug: what-s-the-point-of-krishnamurthi-and-fisler-s-2020-paper-on-data-centricity
categories: []
tags: []
---

## Break!

While visiting family, I recharged (a bit) and took (a bit of) a break. One benefit of the break is that it let me reevaluate how I work---and what my priorities for the year ahead are (note, it's a bit unfortunate when breaks are a time to think more about work, but that's sometimes how it goes, and I'm grateful for the break I had!). 

## Alt peer review: via blogs (or newsletter)

One idea I had related to an entirely different mode of peer review. 

First, I like peer review. Really! I can't say how many times a paper I reviewed ends up being a paper I draw from in my work. That thought makes me think I should read and engage with more papers. Also, I like publishing papers. It's a rewarding, if not (too) long process, and having one's work be published in a journal---especially one that others or many in one's professional field peruse or read---is an accomplishment. 

But, I am also frustrated by peer review. While it is often great, leading one to change and improve one's work substantially, it's often . . . not. And, the publishing system relies on publishers that in some ways have policies and practices that are anti-reviewer (e.g., submissions guidelines that place tables and figures after the text of the paper), anti-reader (e.g., requiring readers to either have access through an [academic] library or to purchase articles), and anti-author (e.g., convoluted submission systems). Notably, authors and reviewers almost always do this work---often directly or indirectly funded by the public, or funded by students---entirely for free. I believe many editors do, too, and when they do receive funding, it's typically a small amount to support a managing editor.

Awhile ago, a host of [the Black Goat podcast](https://www.theblackgoatpodcast.com/about/) (I think [Simine Vazire](https://www.simine.com/) shared a radically different idea for peer review, one in which individuals would review papers---pre-prints, published papers, and, I think, anything in between---through something like entries in a newsletter or posts on a blog. In this way, the distinction between something that is not peer-reviewed, like a pre-print, and something that is or was---a journal article---is blurred. This means that pre-prints can be reviewed, albeit in a less formal way. Also, articles that are already published can (still) be constructively critiqued. It also means that authors' work could be the subject of a lot of attention if a prominent individual reviewed their work, regardless of the stage of the work, and that the review would become a part of the conversation around the work. There are a lot of possible problems that one could anticipate about this process (and many ways that it is less ideal than traditional peer review), but it struck me as a kind of review that is suited to doing research and science in an Internet-enabled way. I recognize that one downside of this approach is that the "review" can be trivial, not approaching the quality of even the median review from peer review as we know it.

Another benefit is that this would help me to read more work.

Also, many (but certainly not all!) authors like to read about what people think of their work. Some fields have a more vibrant blogosphere; I think education research does not, yet.

Finally, I like to try out new ways of doing research and writing. For instance, [I wrote my dissertation in the open through GitHub](https://jrosen48.github.io/dissertation/) not because I thought many people would read it (I think not many did!), but because I wanted to try to practice (and exhibit) this capability for future work (and, doing this led me to [co-author an open book](https://github.com/data-edu/data-science-in-education)). Academics---even pre-tenure academics that are privileged because of their backgrounds and identity---have an incredible opportunity to pursue things they're interested in and to do things in new ways. This is one area where I think academics can innovate.

## What's the point?

I talked with my wife Katie (a librarian) about this idea (and, riffed on it with [my podcast co-host Ryan](https://linktr.ee/ry_estrellado)), and Katie helped me to come up with (and Ryan helped me to settle on) the name *What's the point* for what this alt peer review process may look like for me. So, I hope the authors of the paper that I'm reviewing don't see the title of this post as pejorative! In fact, I admire the work, and, going forward, I plan to only read and write about papers that I'm interested in or have wanted to read. I don't really have a format yet, but I'll try to figure that out here.

The paper I read and am writing about is:

> Krishnamurthi, S., & Fisler, K. (2020). Data-centricity: a challenge and opportunity for computing education. *Communications of the ACM*, 63(8), 24-26. 

It's available from the ACM [here](https://dl.acm.org/doi/fullHtml/10.1145/3408056?casa_token=0zOqDPK1vlQAAAAA:cOtAyvLXLr6V2obFPj-HDpk3p2gx1ttMiJbwmC63ZjlVUvuz_ppae8hv-xULASEPqLtJ3tCmnrXa3A) and as a pre-print [here](http://cs.brown.edu/~sk/Publications/Papers/Published/kf-data-centric/paper.pdf).

I'll try writing about four things: what the paper says, what (I think) the point is, what criticisms I have, and any reflections. 

### What the paper says

The rise of introduction to data science courses is an implicit critique of introduction to computer science courses. This section of the paper was what made me interested to read more:

> Data science works with real datasets that touch on real-world problems, rather than artificial starter problems based on numbers, strings, and arrays. In all of these ways, conventional CS1 courses appear inauthentic or irrelevant for data-facing students. Moreover, the end goal of conventional early CS courses is usually to prepare students for more CS courses, rather than to prepare them to continue to learn additional data-relevant programming content as their interests demand.

The paper takes up the notion that perhaps there _should be_ separate (from introduction to computer science) introduction to data science course, as is an emerging status quo. The authors note that this may also not be ideal for practical (duplication of courses or learning objectives within course) and technical (in data science contexts, program design and testing still matter, but these ideas/practices that are included in introduction to computer science courses are rarely included in introduction to data science courses) reasons.

The solution, the authors propose, is to make introduction to computer science courses more data-centric:

> We suggest that there is a strong alternative: to integrate data-science components into introductory computing.

Their next suggestion resonated to me as a former science teacher and an R (and a tidyverse) user, namely, data stored in row-column format is powerful (enough) and (can be) accessible to beginners:

> We should begin the curriculum in “data science” with some basic data engineering. That is, students begin right away with data sets of some complexity reflecting real-world questions. Perhaps surprisingly, we believe that even the choice of representation matters, and recommend focusing specifically on data represented in tabular
formats. 

Later in their coursework, students learn about other structures for their data - things that those of us who tried to learn to program (with a language like Javascript) but never got far off of the ground with may have been exposed to: lists, dictionaries, and arrays. Python has only really "worked" for me when I use tables via Pandas data frame objects---a structure very familiar to me as a former science teacher and an R user.

### So, what's the point?

Instead of teaching introduction to data science students to work with data stored in tables (think spreadsheets), and teaching introduction to computer science students to manipulate data in structures like lists, there may be benefits to students who end up in _both_ classes to introducing students to working with data in table format and functions that are designed to solve real problems that one encounters when analyzing complex data. Later, students will likely benefit from learning about more abstract data structures, especially when they see the need for those. 

### Critiques

These are big questions and changes to the curriculum, so there's not an easy research design that can test these conjectures. I recognize that this paper was published in the *Communications of the ACM*, a magazine-journal read by many in computer science, but I'd like to read more about how these conjectures could be explored by educational researchers (or what research these computer science and computing education researchers have carried out on this!).

### Reflections

How data science and computer science differ reminded me of how science and math classes at the K-12/pre-collegiate level differ. Science classes (can) involve the exploration of complex phenomena, whereas mathematics classes (often but not always) involve problems that are more idealized (and more amenable to solving mathematically), similar to how introduction to data science courses can involve analyzing complex data whereas introduction to computer science courses often involve using fabricated data to learn about data structures.

If interested in these topics, I recommend reading the paper. Here are links to more of [Krishnamurthi's](https://cs.brown.edu/~sk/) and [Fisler's](http://cs.brown.edu/~kfisler/) work in computing education.
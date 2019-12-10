---
title: Using R/R Studio from a (Pixel Slate) Chromebook
author: ''
date: '2019-12-10'
slug: using-r-r-studio-from-a-pixel-slate-chromebook
categories: []
tags: []
---

I've had a [Pixel Slate](https://store.google.com/us/product/pixel_slate?gclid=CjwKCAiAob3vBRAUEiwAIbs5ToRHYru6-mDs9TNw09h8mjcV0bCr2FEWBnL5XWvn4dzWeu-2NmE56RoCoSsQAvD_BwE&gclsrc=aw.ds) Chromebook for a little while, and noticed in a recent update that it was possible to install Linux. 

This was pretty easy to do (see [here](https://support.google.com/chromebook/answer/9145439?hl=en)). After doing it (it took a few minutes to download Linux, but was otherwise super straightforward), I opened up the command line interface and saw this:

```
> 
```

There are a few things I know how to do through a command line interface; one is to list all of the files and directories available, so I ran the following:

```
ls
```

That returned *nothing at all*. I then ran the following, to see if there was anything "one level up"" in the file structure:

```
cd ..
```

That showed something, namely, my Google user name; perhaps there could be different directories for every screen name. At this point, I was a little flummoxed by what to do, and so I searched Google, and saw that it is possible to install Linux programs, like Python or R, directly from the command line interface.

Okay. 

I then found [this super helpful tutorial](https://francish.netlify.com/post/installing-r-and-rstudio-on-a-pixel-slate/) for how to install R Studio (as well as R), and followed it, and found it worked, with a few exceptions.

In short, here are the steps I followed that worked, with one from (and one addition to) the above tutorial mentioned.

## Install R

```
sudo apt-get install r-base r-base-dev
```

Run the following to check that R installed

```
R
```

You should see some text and then what looks like (and is) an R Console. Run a command or two (I ran `josh <- 4`). Quit by running the command `quit()`.

# Install R Studio

First, download the **Debian 9+** version of R Studio [from R Studio's website](https://rstudio.com/products/rstudio/download/). Save it to the Linux partition, which is helpfully available/viewable directly in the file viewer for Chromebook.

Run the following command, which installs a tool that will be used to install the R Studio file that was just downloaded:

```
sudo apt-get install gdebi-core
```

Then, install the R Studio file downloaded (if you start typing the name of the file, i.e. `rstudio-`, and then press tab, it should auto-complete the name):

```
sudo gdebi rstudio-xenial-1.1.463-amd64.deb
```

Almost there!

The tutorial notes that one shared library has to be installed, before you can run R Studio:

```
sudo apt-get install libxslt1-dev
```

I *also* had to run the following, to install another shared library (h/t to [this forum answer](https://community.rstudio.com/t/installation-error-cannot-find-libsmime3-so/30646)):

```
sudo apt install libnss3
```

Now, type `rstudio` in the command line interface:

```
rstudio
```

Amazingly (to me), the R Studio application should open on your Chromebook - and be pretty snappy (so far, the functionality seems comparable to that on my Chromebook, including the ability to use git/GitHub - though that has more to do with Linux, I think, than R Studio)!

You'll have to keep your Linux terminal/the command line interface open while running RStudio.

## Installing tidyverse packages

One addition: When I tried to install the tidyverse package, I ran into an issue with `httr` and `rvest`. That was remedied by running the following (thanks to [this forum answer](https://community.rstudio.com/t/cant-install-tidyverse/29293/2)):

```
sudo apt-get install r-base-dev xml2 libxml2-dev libssl-dev libcurl4-openssl-dev unixodbc-dev
```

## fin

To what end? Chromebooks can be less expensive than (Mac or Windows) computers, and their operating system can be easy to use, although Chromebooks are limited by their inability to install other applications. Being able to install R and R Studio is useful (to me), but I am sure that being able to install other applications may be more useful. I am compelled by the idea of not only the Internet, but also operating systems, being able to more flexibly run a variety of applications, especially for learners, and particularly for learners to be able to do more with existing technology. 

*Note*: I wrote this blog post through R Studio (via blogdown) on my Chromebook!

---
title: My experience with getting started with high-performance computing
author: Joshua Rosenberg
date: '2020-08-31'
slug: getting-started-with a-high-performance-computing-service
categories: []
tags: []
---

Sometimes I blog about things I've done a lot, like [biking](https://joshuamrosenberg.com/blog/getting-started-bike-commuting/). Other times, this blog serves as as chance to try out new ideas, or to document how something worked
one time, with the hope of building on it later, [like in this post](https://joshuamrosenberg.com/posts/using-r-r-studio-from-a-pixel-slate-chromebook/). This post is definitely in the latter category. I've been _trying_ to use the high-performance computing service at my 
institution for around a year or more, but I was never able to really get the basics down to the point that I could reliably do what I wanted.

I spoke recently with [a friend](http://datalorax.github.io/) who had used their institution's high-performance computing service, and felt encourage to try again. 

Here goes. I'd like to ask for help or clarification from others on any of these aspects; I think I've made one or more mistakes or have at least not been precise with the terminology.

## The why

So, why am I doing this? Especially for some kinds of models - those that have multiple levels of nesting, larger sample sizes, and/or multiple outcomes - running can take a long time, as long as a day (or longer). Running these models (I'm thinking of those estimated with MCMC) on a laptop or even a desktop can take up most or functionally all of the resources of that computer, making it hard to do anything else with it. Scheduling and running jobs also lets you run multiple models, those that could collectively take a week or longer. 

## The process

1. First, I had to sign-up for an account. Being staff/a faculty member did not mean that I already had an account.

2. I found it helpful to explore the browser-based file viewer (linked through the main page about the high-performance computing service; for me, that's here: https://acf-login1.nics.utk.edu/) and (again, browser-based) command-line interface _first_, but I found it counter-productive to rely on in the long-term. This allowed me to get a feel for the file structure and how to load and begin to use the software I was using. 

3. The above step allowed me to try out things like using R from the command line. To be able to access R, I had to load it as a **module**. The new language (what's a module?) here was difficult for me. There are _many_ modules, from Anaconda and R to... a bunch of things I don't recognize, and some I sort of vaguely do. In any case, typing `module` returns available commands. `avail` lists all of the available modules; `module avail` shows that three different versions of R are available to be loaded as modules. The most recent, for better or worse, was version 3.6.1. I loaded it by typing `module load` and then the name of the module that included the version, `r/3.6.1`; so, together, `module load r/3.6.1`.

4. Now I could type `R`, and use R as a console. Cool.

5. At this point, I was pretty much stuck running `source(uploaded-file.R)`, for which I had to have uploaded the R file to the server - manually - before running it. This inevitably (for me) involved remembering that only base packages are installed, and having to install packages (e.g., {dplyr}) before sourcing the file. I found it helpful to try to load as few packages as possible; having to install e.g. {tidyverse} can take awhile, and there are more dependencies for it which can (and occasionally did) cause headaches, like when some operating system-level package wasn't available (I think this happened to me with curl-fixing it involved multiple help tickets, oye).

6. The problem with sourcing scripts is two-fold. First, my browser had to remain open while the file was running. Second, there are limits on how long you can run a file and the resources you can use. This next step was a key to using the high-performance computing service more effectively, accessing it from (on my Mac) Terminal, a command line interface. Logging in was surprisingly easy. I opened Terminal and typed (per the instructions): `ssh <NetID>@acf-login.acf.tennessee.edu.`. I had two factor-authentication, but after typing my password, it was pushed to my phone as it usually is. And that was it; I could access all of the same files (and functionality) available through the browser, and a bit more.

7. The next step involved writing the code to run a job. This was challenging at first. A job is a file that ends in `.sh`, or a shell (I think of it as a Terminal or command line code) script. At least for this purpose, it has _headers_ and then command line codes. I found these headers-which start with `#PBS - l` (again, the new language was challenging here) to be necessary and helpful:

```{sh}
`#PBS -l nodes=1:ppn=10`
`#PBS -l walltime=23:59:59`
```

The first like requests the number of `nodes`, which I think of as "computers", and `ppn`, or processors per node, which I think of as the number of processors or cores on the computer (i.e., the MacBook I'm writing this from has 8). 10 seemed like a good number of cores for my purpose. 

The second line specifies the `walltime`, or how long you think you will need to access the service. It turns out that 24 hours is the maximum time that you can request with requesting additional time through a help ticket (or through arranging to pay for the service, which I wasn't quite ready to do yet). For now, this was enough time. 

Finally, the code the run the file(s) I wanted to run. This again involved a lot of trial-and-error, and help tickets.

```{sh}
module load r/3.6.1
cd /nics/d/home/jrosenb8/my-dir
/sw/cs400_centos7.3_acfsoftware/r/3.6.1/centos7.3_gnu6.3.0/bin/Rscript /nics/d/home/jrosenb8/my-dir/hpc-run.R
```

First, I load the most recent version of R as a module. Then I change into `my-dir` (this can be named whatever you like), using the entire file path (it didn't seem to work without this). Finally, I use the `Rscript` command (rather than loading R by typing `R` and then running `source()` on the file; this seemed hard to do in a shell script), which required finding the entire file path to that command (to be totally honest, I have no idea how I found that, oye), and then passing the full path to the file I wanted to run. Easy, right? :)

As if this wasn't quite hard enough, I now had to upload the file to the server from the command line. Seems easy enough, but, of course, there's not a text editor you can simply open (`open my-file.txt` does _not_ work). I used vim. First, I created a new file: `touch main-job.sh`. Then `vim main-job.sh`. The next part was relatively easy, I copy-pasted the above five lines (the two headers and three lines of code) into the file via vim. Of course, this meant I had to [_exit_ vim](https://stackoverflow.com/questions/11828270/how-do-i-exit-the-vim-editor).

8. The last step is scheduling and submitting the job. This was actually delightfully easy. From the command line, `qsub main-job.sh`.

9. Finally, I could monitor the job (whether it has started running or is queued; if it is running, for how long it has been doing so) by typing `qstat -a`. 

10. There is one more step - what to do when you're done. I've learned the hard way that it's important (of course, now it seems obvious) to write/save the output, so you can view/download/use it.

Woof. I welcome advice.
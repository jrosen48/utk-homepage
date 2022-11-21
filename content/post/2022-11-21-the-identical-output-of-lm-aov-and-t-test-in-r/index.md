---
title: The identical output of lm(), aov(), and t.test() in R
author: ''
date: '2022-11-21'
slug: the-identical-output-of-lm-aov-and-t-test-in-r
categories: []
tags: []
---

This one hardly counts as a blog post; it is more a reference for myself.

For some time, I've known on a conceptual level that a linear regression model (one "fit" using `lm()` in the statistical software and programming language R), ANOVA (`aov()`), and *t*-test (`t.test()`) can be conceptualized as being closely-related---though they're often taught as separate techniques. 

I'm going to add the code now, hoping to return to and expand on this later.

Let's use a data set about penguins.

```{r, message = FALSE}
library(tidyverse)
```

```{r}

```
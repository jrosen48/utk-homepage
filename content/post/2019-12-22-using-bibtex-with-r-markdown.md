---
title: Getting a grip on using bibtex with R Markdown documents
author: ''
date: '2019-12-22'
slug: using-bibtex-with-r-markdown
categories: []
tags: []
bibliography: [using-bibtex.bib]
---

I'm just beginning to learn BibTeX, which is, according to Wikipedia -@wikipedia2020, "reference management software for formatting lists of references".

It is useful for publishing formats such as R Markdown documents and books created with bookdown, like the [Data Science in Education Using R](https://en.wikipedia.org/wiki/BibTeX) book.

I'm basically using this post to documenti what I'm learning.

## References

I started with references, which are saved in plain text documents ending in `.bib`. So that R Markdown knows the file(s) to use, the filename is added to the front matter of the document. In R Markdown, for example, I can use the plain text file `references.bib`, im which I store references, by adding this line to the YAML front matter{

`bibliography: [references.bib]`

References have a format which is a bit intuitive. Here is an example for our book:

```{code}
@book{dsieur-under-contract,
  author = {Emily A. Bovee and Ryan A. Estrellado and Jesse Mostipak and Joshua M. Rosenberg and Isabella C. Velásquez},
  title = {Data science in education using R},
  year = {under contract},
  publisher = {Routledge},
  url = {https://datascienceineducation.com},
 }
```

The key parts are the `@book` (which can be replaced with `@article`, `@proceedings`, [.etc](http://bib-it.sourceforge.net/help/fieldsAndEntryTypes.php#Entries)), the "key" (which, for us, is `dsieur-under-contract`), and the key-value pairs. In addition to those used above (for author, title, year, publisher, and url, [others](http://bib-it.sourceforge.net/help/fieldsAndEntryTypes.php#Fields) are available, including volume, issue, chapter, and editor).

## Citations

With a reference saved in the `.bib` file (and the `.bib` file referenced in the document or book front matter), it can be cited in text by referring to the citation key. For example, the following sentence:

```{code}
An aim of *Data science in education using R* is to help to equip those working in education, including teachers, data analysts and scientists, researchers, and administrators to solve problems and ask questions in the context of educational data and systems [@dsieur-under-contract.]
```

(I'll leave it to my co-authors to summarize the aims of our book better, oye!).

Would render as the following:

> An aim of *Data science in education using R* is to help to equip those working
in education, including teachers, data analysts and scientists, researchers, and
administrators to solve problems and ask questions in the context of educational
data and systems [@dsieur-under-contract].

References can be cited in different way.

- `[@dsieur-under-contract]` renders as [@dsieur-under-contract] for parenthetical citations
- `@dsieur-under-contract` renders as @dsieur-under-contract for in-text citations
- `-@dsieur-under-contract` renders as -@dsieur-under-contract for only the year

[*note*: this post is in-progress]

### References


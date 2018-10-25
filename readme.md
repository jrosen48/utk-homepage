This is my homepage. It is available at [https://jmichaelrosenberg.com](https://jmichaelrosenberg.com)

# CV 

Here is a bit of information about how I use my homepage to create a CV.

### My goal: To write a CV in one format and in a way so that it can be rendered in multiple formats

I have been trying to write my CV once and have it be displayed/rendered as HTML (for this website), a PDF (for sharing), and a Word document (also for sharing - as some folks require it to be in this format).

I have something that seems to work and so thought I would share what I did as a first attempt. In part, I hoped doing so would spark other folks sharing better ways (or suggesting improvements to me).

Just as a sidenote, using [blogdown](https://bookdown.org/yihui/blogdown/) to create my website was essential.

## The results

Here's what I did; all of the source files are available [here](https://github.com/jrosen48/utk-homepage); the final versions are available in the following formats from different URLs:

- HTML: [https://www.joshuamrosenberg.com/about](https://www.joshuamrosenberg.com/about/)

- PDF: [https://www.joshuamrosenberg.com/rosenberg-cv.pdf](https://www.joshuamrosenberg.com/rosenberg-cv.pdf) 

- Word (.docx): [https://www.joshuamrosenberg.com/cv/rosenberg-cv.docx](https://www.joshuamrosenberg.com/cv/rosenberg-cv.docx)

## My process

*All of the file locations refer to the source [here](https://github.com/jrosen48/utk-homepage)*.

1. Treated the file at `content/about-source.md` as the one file in which I wrote (and will update) my CV
1. Added a file (in a new directory), `r/build.R`, which contains `cv-utils.R`
1. This script (`cv-utils.R`) does most of the work:
    - copies `content/about-source.md` to `static/cv` with the name (and file type) changed to `rosenberg-cv.Rmd` (and which)
    - reads `content/about-source.md`
        - then removes the LaTeX tags 
        - writes the file to to `static/cv` with the name (and file type) changed to `rosenberg-cv.Rmd`
        - and renders the Word document using `Rosenberg-CV-template.docx` as the document template (created by using the "Incremental style editing" described [here](https://rmarkdown.rstudio.com/articles_docx.html))
    - does essentially the steps taken to render the Word document *again* to render the HTML version
        - but with a line added after the front matter with a link to the PDF version
        - and with the result being saved to `content/about.md` to serve as basis for the HTML file rendered with that file name (i.e., the file [here](https://www.joshuamrosenberg.com/about/))
        
That's basically it. It's a bit clunky; but, it seems to mostly work.
        
## To do

For the CV to be (more) useful in Word document and HTML format, there is a change/improvement that need to be made:

- Need to center the contact information at the beginning of the file

And probably others that you see. Let me know through an issue in the [GitHub repository](https://github.com/jrosen48/utk-homepage), by email (jmrosenberg [at] utk [dot] edu), or via [Twitter](http://twitter.com/jrosenberg6432).
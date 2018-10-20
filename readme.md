This is my homepage. 

# CV 

## Current status

I am trying to write my CV once (in markdown) and have it be displayed/rendered as HTML, a PDF, and a Word document.

To try to do that, I have done the following:

- Treated the file at `content/about.md` as the one file in which I wrote (and will update) my CV
- Add a file (in a new directory), `r/build.R`, which contains:
    - `blogdown::build_dir("static")` to render `rosenberg-cv.Rmd` as a PDF document
    - `source("cv-utils.R")`, which:
        - copies `content/about.md` to `static/cv` with the name (and file type) changed to `rosenberg-cv.Rmd` (and which)
        - renders `rosenberg-cv.Rmd` as a Word document using the file `Rosenberg-CV-template.docx` as the document template (created by using the "Incremental style editing" described [here](https://rmarkdown.rstudio.com/articles_docx.html))
        
## To do

For the CV to be useful in Word document format, there are a changes/improvements that need to be made:

- LaTeX tags need to be removed (should be easy)
- Need to center the contact information at the beginning of the file

For the CV to be useful in HTML format:

- LaTeX tags need to be removed (should be easy)
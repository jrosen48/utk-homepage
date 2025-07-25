# For PDF

file.copy("about-source.Rmd", "static/rosenberg-cv.Rmd", overwrite=TRUE)
lines <- readr::read_lines('static/rosenberg-cv.Rmd')
lines[15] <- "```{r, include = FALSE, eval = FALSE}"
lines[64] <- ""
lines[66] <- "```{r, echo = FALSE, eval = FALSE}"
lines[67] <- "render_toc('static/rosenberg-cv.Rmd')"
#lines <- lines[-c(61, 63:66, 83)]
# lines[61] <- ""
# lines[62] <- ""
# lines[63] <- ""
l <- which(stringr::str_detect(lines, "Resource") & stringr::str_detect(lines, "Logo"))
lines <- lines[-c(l:(l + 5))]
readr::write_lines(unlist(lines), 'static/rosenberg-cv.Rmd')
rmarkdown::render("static/rosenberg-cv.Rmd", output_format = "pdf_document", clean = FALSE)

# knitr::knit("static/rosenberg-cv.Rmd", output="static/rosenberg-cv.tex")

header_lines <- unlist(readLines("static/rosenberg-cv-backup-with-styling.tex"))
main_lines <- unlist(readLines("static/rosenberg-cv.tex"))
where_to_begin <- which(stringr::str_detect(main_lines, "hypertarget\\{education\\}"))
main_lines_without_header <- main_lines[where_to_begin:length(main_lines)]

final_lines <- unlist(c(header_lines, "", main_lines_without_header))
readr::write_lines(unlist(final_lines), 'static/rosenberg-cv.tex')
tinytex::pdflatex("static/rosenberg-cv.tex")

# I don't think this is needed
# manually copy over the text file, static/rosenberg-cv-backup-with-styling.tex,
# to static/rosenberg-cv.tex, then render to PDF

# old_lines <- readLines("static/rosenberg-cv-backup-with-styling.tex")
# new_lines <- readLines("static/rosenberg-cv.tex")
# 
# old_lines
# new_lines

# # # # For Word
# file.copy("about-source.Rmd", "content/about-for-cv.Rmd", overwrite=TRUE)
# lines <- readLines("content/about-for-cv.Rmd")
# lines[65] <- ""
# lines[15] <- "```{r, include = FALSE, eval = FALSE}"
# lines[67] <- "```{r, echo = FALSE, eval = FALSE}"
# lines <- lines[lines!="\\begin"]
# lines <- lines[lines!="\\begin"]
# lines <- lines[lines!="\\textit"]
# lines[stringr::str_detect(lines, "Curriculum Vitae")] <- "*Curriculum Vitae*"
# lines <- lines[lines!="\\begingroup"]
# lines <- lines[lines!="\\hangindent=2em"]
# lines <- lines[lines!="\\center"]
# lines <- lines[lines!="\\endgroup"]
# writeLines(unlist(lines), "static/cv/rosenberg-cv-for-word.Rmd")
# rmarkdown::render("static/cv/rosenberg-cv-for-word.Rmd", output_format = "word_document")

# output:
#     html_document:
#     df_print: paged
# blogdown::html_page:
#     keep_md: no
# pdf_document: default
# word_document:
#     reference_docx: Rosenberg-CV-template.docx
# 
# ## For HTML
file.copy("about-source.Rmd", "content/about.Rmd", overwrite=TRUE)

cv_html <- readLines("content/about.Rmd")

find_yml <- stringr::str_detect(cv_html, "---")
end_of_yml <- which(find_yml)[2]

# find_toc <- stringr::str_detect(cv_html, "render_toc")
# toc <- which(find_toc)
# cv_html <- append(cv_html, "```{r, echo = FALSE}", after = toc)
# cv_html <- append(cv_html, "```", after = toc-1)

cv_html <- append(cv_html, "PDF version: <a href = 'http://joshuamrosenberg.com/rosenberg-cv.pdf'> <img src='/logos/pdf.png' style='width: 25px; height: 25px;'/></a>", after = end_of_yml)

cv_html <- cv_html[cv_html!="\\begin{center}"]
cv_html <- cv_html[cv_html!="\\end{center}"]
cv_html <- cv_html[cv_html!="\\begingroup"]
cv_html <- cv_html[cv_html!="\\hangindent=2em"]
cv_html <- cv_html[cv_html!="\\center"]
cv_html <- cv_html[cv_html!="\\endgroup"]
readr::write_lines(unlist(cv_html), "content/about.Rmd")
rmarkdown::render("content/about.Rmd")

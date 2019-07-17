# # For PDF

file.copy("content/about-source.md", "static/rosenberg-cv.Rmd", overwrite=TRUE)
rmarkdown::render("static/rosenberg-cv.Rmd", output_format = "pdf_document")
file.copy("static/rosenberg-cv.pdf", "static/cv/rosenberg-cv.pdf", overwrite=TRUE)

## For Word
file.copy("content/about.md", "content/about-for-cv.md", overwrite=TRUE)
cv_word <- readLines("content/about-for-cv.md")

cv_word <- cv_word[cv_word!="\\begin"]
cv_word <- cv_word[cv_word!="\\begin"]
cv_word <- cv_word[cv_word!="\\textit"]
cv_word[stringr::str_detect(cv_word, "Curriculum Vitae")] <- "*Curriculum Vitae*"
cv_word <- cv_word[cv_word!="\\begingroup"]
cv_word <- cv_word[cv_word!="\\hangindent=2em"]
cv_word <- cv_word[cv_word!="\\center"]
cv_word <- cv_word[cv_word!="\\endgroup"]

writeLines(unlist(cv_word), "static/cv/rosenberg-cv-for-word.Rmd")
rmarkdown::render("static/cv/rosenberg-cv-for-word.Rmd", output_format = "word_document")

## For HTML
file.copy("content/about-source.md", "content/about.md", overwrite=TRUE)

cv_html <- readLines("content/about.md")

find_yml <- stringr::str_detect(cv_html, "---")
end_of_yml <- which(find_yml)[2]

# find_toc <- stringr::str_detect(cv_html, "render_toc")
# toc <- which(find_toc)
# cv_html <- append(cv_html, "```{r, echo = FALSE}", after = toc)
# cv_html <- append(cv_html, "```", after = toc-1)

cv_html <- append(cv_html, "PDF version: <a href = 'http://jmichaelrosenberg.com/rosenberg-cv.pdf'> <img src='/logos/pdf.png' style='width: 25px; height: 25px;'/></a>", after = end_of_yml)

cv_html <- cv_html[cv_html!="\\begin{center}"]
cv_html <- cv_html[cv_html!="\\end{center}"]
cv_html[stringr::str_detect(cv_html, "Curriculum Vitae")] <- "*Curriculum Vitae*"
cv_html <- cv_html[cv_html!="\\begingroup"]
cv_html <- cv_html[cv_html!="\\hangindent=2em"]
cv_html <- cv_html[cv_html!="\\center"]
cv_html <- cv_html[cv_html!="\\endgroup"]

writeLines(unlist(cv_html), "content/about.md")

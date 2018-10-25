# # For PDF

file.copy("content/about-source.md", "static/cv/rosenberg-cv.Rmd", overwrite=TRUE)
rmarkdown::render("static/cv/rosenberg-cv.Rmd", output_format = "pdf_document")

# # For Word

cv_html <- readLines("content/about.md")

cv_html <- cv_html[cv_html!="\\begingroup"]
cv_html <- cv_html[cv_html!="\\hangindent=2em"]
cv_html <- cv_html[cv_html!="\\center"]
cv_html <- cv_html[cv_html!="\\endgroup"]

writeLines(unlist(cv_html), "static/cv/rosenberg-cv-for-word.Rmd")
rmarkdown::render("static/cv/rosenberg-cv-for-word.Rmd", output_format = "word_document")

# # For HTML
file.copy("content/about-source.md", "content/about.md", overwrite=TRUE)

cv_html <- readLines("content/about.md")

find_yml <- stringr::str_detect(cv_html, "---")
end_of_yml <- which(find_yml)[2]
cv_html <- append(cv_html, "PDF version available at http://joshuamrosenberg.com/Rosenberg-CV.pdf", after = end_of_yml)

# cv_html <- purrr::map(cv_html, ~ stringr::str_replace_all(., " \\begingroup", ""))
# cv_html <- purrr::map(cv_html, ~ stringr::str_replace_all(., " \\endgroup", ""))
# cv_html <- purrr::map(cv_html, ~ stringr::str_replace_all(., " \\center", ""))
# cv_html <- purrr::map(cv_html, ~ stringr::str_replace_all(., " \\hangindent=2em", ""))

cv_html <- cv_html[cv_html!="\\begingroup"]
cv_html <- cv_html[cv_html!="\\hangindent=2em"]
cv_html <- cv_html[cv_html!="\\center"]
cv_html <- cv_html[cv_html!="\\endgroup"]

writeLines(unlist(cv_html), "content/about.md")

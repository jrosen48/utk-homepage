# For PDF

file.copy("about-source.Rmd", "static/rosenberg-cv.Rmd", overwrite=TRUE)
lines <- readr::read_lines('static/rosenberg-cv.Rmd')
lines[13] <- "```{r, include = FALSE, eval = FALSE}"
lines[62] <- ""
lines[64] <- "```{r, echo = FALSE, eval = FALSE}"
lines[65] <- "render_toc('static/rosenberg-cv.Rmd')"
#lines <- lines[-c(61, 63:66, 83)]
# lines[61] <- ""
# lines[62] <- ""
# lines[63] <- ""
l <- which(stringr::str_detect(lines, "Resource") & stringr::str_detect(lines, "Logo"))
lines <- lines[-c(l:(l + 5))]
#lines <- str_replace(lines, "\section{Curriculum Vitae}\label{curriculum-vitae}}", 
#                     "\begin{center}\section{Curriculum Vitae}\label{curriculum-vitae}}\end{center}")
    
# prepping final content
lines[6] <- "fontsize: 10pt"
lines[8] <- "  pdf_document:"
lines[9] <- "    includes:"
lines[10] <- '      in_header: "preamble.tex"'
lines[61] <- "\\begin{center} Curriculum Vitae"
lines[68] <- "\\hfill"
lines[78] <- ""
lines[69] <= "\\justify"
lines[80] <- paste0("\\emph{Research interests:} ", lines[80], "\\end{center}")
lines[70] <- paste0(lines[70], "\\linebreak")
lines[71] <- paste0(lines[71], "\\linebreak")
lines[72] <- paste0(lines[72], "\\linebreak")
lines[73] <- paste0(lines[73], "\\linebreak")
lines[74] <- paste0("Phone: 865-974-5973\\linebreak")
lines[75] <- paste0("Email: jmrosenberg@utk.edu\\linebreak")
lines[76] <- paste0("Web: https://joshuamrosenberg.com\\linebreak")
readr::write_lines(unlist(lines), 'static/rosenberg-cv.Rmd')
rmarkdown::render("static/rosenberg-cv.Rmd", output_format = "pdf_document")
file.copy("static/rosenberg-cv.pdf", "static/cv/rosenberg-cv.pdf", overwrite=TRUE)

# # For Word
# file.copy("about-source.Rmd", "content/about-for-cv.Rmd", overwrite=TRUE)
# lines <- readLines("content/about-for-cv.Rmd")
# lines[65] <- ""
# lines[13] <- "```{r, include = FALSE, eval = FALSE}"
# lines[64] <- "```{r, echo = FALSE, eval = FALSE}"
# lines <- lines[lines!="\\begin"]
# lines <- lines[lines!="\\begin"]
# lines <- lines[lines!="\\textit"]
# lines[stringr::str_detect(lines, "Curriculum Vitae")] <- "*Curriculum Vitae*"
# lines <- lines[lines!="\\begingroup"]
# lines <- lines[lines!="\\hangindent=2em"]
# lines <- lines[lines!="\\center"]
# lines <- lines[lines!="\\endgroup"]
# lines <- stringr::str_replace_all(lines, "<.*?>", "")
# 
# writeLines(unlist(lines), "static/cv/rosenberg-cv-for-word.Rmd")
# 
# # word_document:
# #     reference_docx: Rosenberg-CV-template.docx
# 
# rmarkdown::render("static/cv/rosenberg-cv-for-word.Rmd", output_format = "word_document")


# ## For HTML
file.copy("about-source.Rmd", "content/about.Rmd", overwrite=TRUE)

cv_html <- readLines("content/about.Rmd")

find_yml <- stringr::str_detect(cv_html, "---")
end_of_yml <- which(find_yml)[2]

# find_toc <- stringr::str_detect(cv_html, "render_toc")
# toc <- which(find_toc)
# cv_html <- append(cv_html, "```{r, echo = FALSE}", after = toc)
# cv_html <- append(cv_html, "```", after = toc-1)

cv_html <- append(cv_html, "PDF version: <a href = 'http://jmichaelrosenberg.com/rosenberg-cv.pdf'> <img src='/logos/pdf.png' style='width: 25px; height: 25px;'/></a>", after = end_of_yml)

cv_html <- cv_html[cv_html!="\\begin{center}"]
cv_html <- cv_html[cv_html!="\\end{center}"]
cv_html <- cv_html[cv_html!="\\begingroup"]
cv_html <- cv_html[cv_html!="\\hangindent=2em"]
cv_html <- cv_html[cv_html!="\\center"]
cv_html <- cv_html[cv_html!="\\endgroup"]
readr::write_lines(unlist(cv_html), "content/about.Rmd")


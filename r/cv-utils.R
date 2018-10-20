file.copy("content/about.md", "static/cv/rosenberg-cv.Rmd")
rmarkdown::render("static/cv/rosenberg-cv.Rmd", output_format = "word_document")

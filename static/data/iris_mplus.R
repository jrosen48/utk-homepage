# Setting up

library(MplusAutomation)
library(tidyverse)

# can change this to the directory with all of the files and this script
the_dir <- "/Users/joshuarosenberg/Dropbox/5_Professional/homepage/source/static/_media/data/"

# Running models

tbl_df(iris) # using the iris dataset

prepareMplusData(iris[, -5], paste0(the_dir, "iris.dat"))

createModels(paste0(the_dir, "templates/", "iris_lpa_template.inp"))

runModels(paste0(the_dir, "2-iris-LPA_means.inp"), showOutput=TRUE)
runModels(paste0(the_dir, "2-iris-LPA_means_correlated.inp"), showOutput=TRUE)
runModels(paste0(the_dir, "2-iris-LPA_means_correlated_free_variances.inp"), showOutput=TRUE)

m_means <- readModels(paste0(the_dir, "2-iris-LPA_means.out"))
m_means_correlated <- readModels(paste0(the_dir, "2-iris-LPA_means_correlated.out"))
m_means_correlated_free_variances <- readModels(paste0(the_dir, "2-iris-LPA_means_correlated_free_variances.out"))

m_means$parameters$unstandardized %>% filter(paramHeader == "Means")
m_means_correlated$parameters$unstandardized %>% filter(paramHeader == "Means")
m_means_correlated_free_variances$parameters$unstandardized %>% filter(paramHeader == "Means")

m_means$parameters$unstandardized %>% filter(paramHeader == "Variances")
m_means_correlated$parameters$unstandardized %>% filter(paramHeader == "Variances")
m_means_correlated_free_variances$parameters$unstandardized %>% filter(paramHeader == "Variances")

m_means$summaries$BIC
m_means_correlated$summaries$BIC
m_means_correlated_free_variances$summaries$BIC

# runmodels
# mod_list$X2.iris.LPA.out
# 
# mod_list[[8]]
# 
# map_df(mod_list, function(x) x$summaries$BIC) %>% 
#     tidyr::gather(model, BIC)

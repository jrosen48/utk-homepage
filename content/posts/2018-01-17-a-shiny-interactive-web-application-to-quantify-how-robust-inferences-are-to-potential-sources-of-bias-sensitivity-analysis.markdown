---
title: A Shiny interactive web application to quantify how robust inferences are to
  potential sources of bias (sensitivity analysis)
author: ''
date: '2018-01-17'
slug: a-shiny-interactive-web-application-to-quantify-how-robust-inferences-are-to-potential-sources-of-bias-sensitivity-analysis
categories: [r]
tags: [konfound, shiny]
description: The Release of a Shiny interactive web application for carrying out sensitivity analysis
meta_img: /images/image.jpg
---

As part of a revise and resubmit decision for a paper (that was just accepted to the [*Journal of Youth and Adolescence*](https://doi.org/10.1007/s10964-018-0814-9) (pre-print [here](https://jrosen48.github.io/_media/pre-prints/Beymer-Rosenberg-Schmidt-2018-JYA.pdf))), we (Patrick Beymer, Jennifer Schmidt, and I) were asked by the editor to carry out sensitivity analysis for findings. Our understanding was that, in this context, sensitivity analysis means one of two things - or both:

* How results hold up under different specfications of an analyses
* How much bias would have to be present to invalidate an inference

Over the past year or so, I had learned about sensitivity analysis from a class and then work with [Ken Frank](https://msu.edu/~kenfrank/). At the time we received this decision, I had been working with Ken and Ran Xu to develop an R package and web application to make it easier to carry out Ken's approach to sensitivity analysis, focused on the second of the two ways (above) that it's carried out, find out how much bias would have to be present to invalidate an inference. 

I want to share what we incuded in our revised manuscript and then a message that Ken, Ran, and I crafted to distribute the web application we just completed. Without ado, the paragraph we included in our paper is below, followed by our announcement of the web application (and still in-development R package) we used to write the paragraph and to make this revision to the paper.

# Paragraph we included in our revised manuscript

Here is the paragraph we included, first introducing sensitivity analysis and then describing results from carrying it out for the main findings for our paper:

> Particularly for studies that do not use experimental designs, it can be important to determine how robust an inference is to alternative explanations. One approach to addressing this is sensitivity analysis, which involves quantifying the amount of bias that would be needed to invalidate an inference (hypothetically, this bias might be due to omitted or confounding variables, measurement, missing data, etc.). Using the approach described in Frank, Maroulis, Duong, and Kelcey (2013), we carried out sensitivity analysis for inferences we made relative to our key findings. The result is a numeric value for each effect that indicates the proportion of the estimate that would have to be biased in order to invalidate the inference: higher values indicate more robust estimates in that the inferences would still hold even if there were substantial bias in the estimate. For the effect of affect upon engagement, we determined that 84.94% of the estimate in Model 1 and 73.22% of the estimate in Model 2 would have to be due to bias to invalidate the inferences about these relationships. For the sensitivity of the effect of choice in Models 1 and 2, we found that 41.95% and 42.13% of the estimate would have to be due to bias to invalidate the inference, respectively. For the effect of location 54.97% of the estimate in Model 1 and 55.30% of the estimate in Model 2 would have to be due to bias to invalidate the inferences. These large values across all the sensitivity analyses conducted are considered high relative to prior studies using this method (see Frank et al., 2013 for many examples), and suggest that these findings are likely robust in light of possible confounding variables (such as covariates that were not included in the analyses in this study) and other sources of potential bias. Further, we can consider the impact of data that is not missing at random. A small number of missing responses associated with null effects could invalidate inferences about key findings assuming the percent bias needed to invalidate the inferences is small. Considering the large proportions of estimates that would have to be biased to invalidate the inferences made, we can conclude that these findings are robust in light of the data that is presently missing.

# The KonFound-It web application

We are happy to announce the release of an interactive web application, [KonFound-It](http://konfound-it.com), to make it easy to quantify the conditions necessary to change an inference. For example, [KonFound-It](http://konfound-it.com) generates statements such as “XX% of the estimate would have to be due to bias to invalidate the inference” or “an omitted variable would have to be correlated with the outcome and predictor of interest (e.g., treatment) at ZZ to invalidate the inference.” Thus, Konfound-It provides a precise language for debating causal inferences. 

Who would use such an approach in the course of their work?
* Researchers receiving a revise and resubmit decision for a manuscript who is asked to carry out sensitivity analyses or alternative analyses as part of the revision of their manuscript.
* Practitioners (including policymakers) seeking to understand whether evidence in a research report is strong enough to support action in their contexts
* Data analysts and scholars debating whether a research community should make an inference in light of an estimated effect
* Those analyzing observational data seeking to understand how trustworthy an inference is relative to potential omitted variables 
* Those analyzing data from a randomized controlled trial (RCT) trying to understand how generalizable the results from the study are to other contexts
* Those needing to characterize the strengths of their research for the media / a wider audience, including audiences of teachers and administrators

[Konfound-It](http://konfound-it.com) takes four values - the estimated effect (such as an unstandardized regression coefficient), its standard error, the number of observations, and the number of covariates.  [KonFound-It](http://konfound-it.com) returns output in the forms of publishable statements as well as figures to support the interpretation of the output. As you can see in the figure below, the [KonFound-It](http://konfound-it.com) interface is easy-to-use (and can be accessed from both a computer browser as well as mobile devices) and provides links to additional resources and a State procedure and R package for further use.

[![Screenshot](/_media/images/konfound-it-ss.png)](http://konfound-it.com) 
To learn more, check out [KonFound-It](http://konfound-it.com) here: http://konfound-it.com. If you have any questions or feedback, please do not hesitate to contact Ken Frank (and Joshua Rosenberg and Ran Xu) at kenfrank@msu.edu. 

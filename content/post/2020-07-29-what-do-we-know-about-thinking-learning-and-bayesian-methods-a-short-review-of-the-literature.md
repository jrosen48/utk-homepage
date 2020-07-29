---
title: What do we know about thinking, learning, and Bayesian methods? A short review
  of the literature
author: Joshua Rosenberg
date: '2020-07-29'
slug: what-do-we-know-about-thinking-learning-and-bayesian-methods-a-short-review-of-the-literature
categories: []
tags: []
---

**By [Nathan Kenner](https://lhs.loudoncounty.org/apps/pages/index.jsp?uREC_ID=1230519&type=u&pREC_ID=1710860) and Joshua Rosenberg, University of Tennessee, Knoxville**

*Note: This is a first blog post in what we plan to be a series of posts on early-stage work on Bayesian methods in education by Nathan Kenner, [https://ivelasq.rbind.io/](Isabella Velásquez), [https://www.ipn.uni-kiel.de/en/the-ipn/departments/physics-education/staff/kubsch-marcus](Marcus Kubsch), and me. It emerged from discussions with and incorporating feedback from Isabella Velásquez and Marcus Kubsch. It is a bit more formal than typical posts on this blog, but we intend for this to serve as a foundation for our later work (including shorter blog posts on similar topics and other products), and we hope that it elicits feedback and conversation.*

Data literacy describes important capabilities for individuals’ everyday lives and in many domains, particularly scientific and engineering (Lovett & Shah, 2007; McElreath, 2020). There have been a number of efforts to make data literacy more accessible to more individuals, including to K-12 students (Lee & Wilkerson, 2018; Lehrer & English, 2018). These strategies have required—and involved—the development of curricula (Lehrer & Schauble, 2004) and software tools to make it easier for students to work with data (Konold, Finzer, & Kreetong, 2017).

One solution to the technical and learning-related challenges to becoming data literate and working with data creatively and flexibly is an approach that has not been widely used outside of the work of statisticians, data scientists, and engineers, Bayesian methods. Bayesian methods have become popular because they allow scientists and engineers to understand and make statements about how likely phenomena in the world are—even highly complex phenomena, like voting in elections, when births occur within the year and over time, and where radon in the soil beneath homes may be a hazard to individuals’ health (Gelman et al. 2013). Bayesian methods provide a helpful way to approach work with data and data literacy in terms of modeling, one which emphasizes making inferences about phenomena, in addition to (or instead of) carrying out hypothesis tests as a part of more commonly-used statistical approaches.

In this post, our aim is to review some of the past research that has been done on topics related to students’ learning about Bayesian methods. We focus on developmental and psychological research as well as research in mathematics and statistics education.

## Developmental and Psychological Research 

Recent research into how children learn argues that children understand and learn about the world through the intuitive application of Bayesian ideas, including the processes of causal mapping (Schulz et al. 2007)—a type of cognitive process where the directional links between individual ideas, or nodes, represent causality—and, importantly, Bayes nets (Gopnik et al., 2004)—a view of cognition represents the conditional dependencies between a set of ideas. This idea has led current research to equate human learning with the probabilistic models of machine learning. In other words, people (and children) may view (or come to view) the world probabilistically, and in ways that happen to align with Bayesian interpretations of probability. This view has become especially prominent in developmental science (Gopnik and Tenenbaum, 2007; Shultz, 2007).

There is some work, however, that theorizes that people are in fact “incompetent Bayesians” (Shultz, 2007): in real-life people (and children) do not always reason in ways that correspond exactly to what Bayesian models of cognition may predict. This work provided evidence of many inherent biases in adults when asked to predict probabilities and outcomes of events (Tversky & Kahneman, 1974), though this work has been both extended (Griffiths and Tenenbaum, 2007) and critiqued as flawed (Gigerenzer, 2018). Griffiths and Tenenbaum (2007) argued that instead of viewing people as incompetent thinkers influenced by biases, that the state of underdetermined conclusions (situations in which there is insufficient evidence to reach a conclusion) can begin to explain when probabilistic thinking falls short in the real world. From this view, people seem to reason about the world using statistical and probabilistic means to overcome biases. 

In sum, developmental and psychological studies point to the way in which people and particularly children come to intuitively think about and learn about the world in a Bayesian way. At the same time, we know that adults exhibit a tendency in their thinking to reason about the world in a less-than-ideal (given the evidence known)—and a less-than-Bayesian—way, though this tendency is not universal, and is overcome in some cases. How education might play a role in either bringing out the inherent Bayesian ways of thinking that humans might possess or how it might provide support and structure to learners’ efforts to make sense of the world in a less-biased way are issues we are exploring.

## Mathematics and Statistics Education

Less research about Bayesian methods in mathematics and statistics education. We found that less research has been conducted in these fields than we expected. What was found was a few strategies for how to better teach Bayesian methods (Eadie et al., 2019; Gigerenzer & Hoffrage, 1995) and research on using Bayesian methods to interpret classroom-collected data in a statistics course (Paul and Cunnington, 2017), along with generic arguments for the importance of learning Bayesian methods (from the perspective of statisticians; Diamond and Stylianides 2017). To our surprise, we found no examples of K-12 classroom activities that were focusing on Bayesian ways of thinking or analyzing data. Further exploration with a broader search lens (such as research on learning about or how to use probability [Konold, 1995] and research on modeling variability in data [Lehrer & Schauble, 2004]) may be helpful for understanding both the extent of Bayesian-related work in mathematics and statistics education and related work that may go by names other than Bayesian methods. 

## Conclusion

In this post, we reviewed developmental and psychological research as well research on mathematics and statistics education. We found a very rich literature in recent developmental science research. Developmental scientists are assessing the extent to which humans think in a Bayesian way, defined as using prior experiences and knowledge to influence how you interpret cause-and-effect relationships in the world. This work was accompanied by some debates about the extent to which adults think in a Bayesian way; debates which point to the role of biases in thinking, especially thinking probabilistically. After reviewing the Statistics Education Research Journal, IASE ICOT Conference papers and the Journal of Statistics Education, we found 11 distincts articles using our parameters and determined that the mathematics and statistics education literature had less to speak to our interest in Bayesian methods than we initially thought. These journals were searched for articles with references to Bayes or Bayesian in any capacity. This lack of coverage points to the opportunity to explore not only how children and adults but also students across the K-12 grade levels might already think--or benefit from greater chances to think--about the world in more Bayesian ways. We recognize that this is an idealistic view of ways to implement development psychology research in education, but we hope to use this viewpoint as a framework for future work.

### References

Diamond, A. H., & Stylianides, A. J. (2017). Personal epistemologies of statisticians in academia: An exploratory study. *Statistics Education Research Journal, 16*(2), 335-362.

Eadie, G., Huppenkothen, D., Springford, A., & McCormick, T. (2019). Introducing Bayesian Analysis With m&m’s: An Active-Learning Exercise for Undergraduates. *Journal of Statistics Education, 27*(2), 60–67. 

Gelman, A., Carlin, J. B., Stern, H. S., Dunson, D. B., Vehtari, A., & Rubin, D. B. (2013). *Bayesian data analysis*. CRC Press.

Gigerenzer, G. (2018). The bias bias in behavioral economics. _Review of Behavioral Economics, 5_(3-4), 303-336.

Gigerenzer, G., & Hoffrage, U. (1995). How to improve bayesian reasoning without instruction: Frequency formats. _Psychological Review, 102_(4), 684-704.

Gopnik, A., Glymour, C., Sobel, D. M., Schulz, L. E., Kushnir, T., & Danks, D. (2004). A theory of causal learning in children: causal maps and Bayes nets. _Psychological Review, 111_(1), 3.

Gopnik, A., & Tenenbaum, J. B. (2007). Bayesian networks, Bayesian learning and cognitive development. _Developmental Science, 10_(3), 281-287.

Griffiths, T. (2006). Statistics and the Bayesian mind. _Significance, 3_(3), 130–133. 

Konold, C. (1995). Issues in assessing conceptual understanding in probability and statistics. _Journal of Statistics Education, 3_(1).

Konold, C., Finzer, W., & Kreetong, K. (2017). Modeling as a Core Component of Structuring Data. _Statistics Education Research Journal, 16_(2).

Lee, V. R., & Wilkerson, M. (2018). _Data use by middle and secondary students in the digitalage: A status report and future prospects_. Commissioned Paper for the National Academies of Sciences, Engineering, and Medicine, Board on Science Education, Committee on Science Investigations and Engineering Design for Grades 6-12. Washington, D.C

Lehrer, R., & English, L. (2018). Introducing children to modeling variability. In _International Handbook of Research in Statistics Education_ (pp. 229-260). Springer.

Lehrer, R., & Schauble, L. (2004). Modeling natural variation through distribution. _American Educational Research Journal, 41_(3), 635-679.

Lovett, M., & Shah, P. (Eds.). (2007). _Thinking with data_. Psychology Press.

McElreath, R. (2020). _Statistical rethinking: A Bayesian course with examples in R and Stan._ CRC Rress.

Paul, W., & Cunnington, R. C. (2017). An exploration of student attitudes and satisfaction in a GAISE-influenced introductory statistics course. _Statistics Education Research Journal, 16_(2), 487+.

Shultz, T. R. (2007). The Bayesian revolution approaches psychological development. _Developmental Science, 10_(3), 357-364.

Schulz, L. E., Gopnik, A., & Glymour, C. (2007). Preschool children learn about causal structure from conditional interventions. _Developmental Science, 10_(3), 322-332.

Tversky, A., & Kahneman, D. (1974). Judgment under uncertainty: Heuristics and biases. _Science, 185_(4157), 1124-1131.

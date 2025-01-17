# UCSD Data Science Capstone Projects: 2019-2020
---

## Introduction

This is an introduction talking about the capstone project, including:
* broken into domains
* what materials students have available.
* methodological best practices

---

## Student Work <a name="Projects"></a>

Student projects focus on questions within "domains of inqury":

|Domains|
|---|
|[Wikipedia & Social Analysis](#domain_01)|
|[Quantifying Artistic Style](#domain_02)|
|[Fair Policing](#domain_03)|
|[Clustering the Human Genome](#domain_04)|
|[Malware / Graph Learning](#domain_05)|

---

### Projects

The content of student projects are found below:

|Domain|Project|
|---|---|
|**Wikipedia & Social Analysis** <a name="domain_01"></a>||
||[Racial Bias in Film Awards Shows: Oscars & Golden Globes](#project_01)|
||[User Engagement in Wikipedia](#project_02)|
||[Investigating the Trustworthiness of Wikipedia and the Media in the Scope of COVID-19](#project_03)|
|**Quantifying Artistic Style** <a name="domain_02"></a>||
||[Name That Raga: An Analysis and Classification of Indian Classical Music](#project_04)|
||[Red Means Go: Analyzing YouTube Thumbnail Trends.](#project_05)|
||[RestoreNet: Quantifying Image Restoration of World War II Images](#project_06)|
||[MineSkins](#project_07)|
||[What Makes a Super Bowl Commercial Super?](#project_08)|
||[Book Cover Reader](#project_09)|
|**Fair Policing** <a name="domain_03"></a>||
||[Analyzing the Media's Effect on SD Police Traffic Stops](#project_10)|
||[Does the Race of a Police Officer Influence Traffic Stop Outcomes?](#project_11)|
||[Is Predictive Policing Preventative? An analysis of predictive policing systems and their effect on crime.](#project_12)|
||[Effects of Recreational Marijuana Legalization on Traffic Collisions in California](#project_13)|
|**Clustering the Human Genome** <a name="domain_04"></a>||
||[Genetic Differences Between Glioblastoma Multiforme and Low-Grade Glioma Populations: How Does Copy Number Variation Distinguish Each Disease?](#project_14)|
||[Meta-Analysis to find Genes related to T2Ds](#project_15)|
||[Predicting Disease Risk Through Machine Learning](#project_16)|
||[Cancer Survivability & Genetic Mutations across Germ Layers](#project_17)|
||[Evaluating miRNA as Biomarkers for pre-Type 1 Diabetes](#project_18)|
||[Genome-wide association studies on Alzheimers Disease](#project_19)|
|**Malware / Graph Learning** <a name="domain_05"></a>||
||[Exploration of Graph Embedding Techniques in HinDroid](#project_20)|
||[HinReddit: Understanding Hate and Conflict in Reddit Communities](#project_21)|
||[Heterogenous Graph Embedding for Record Linkage](#project_22)|
||[Improving and Explaining HinDroid](#project_23)|
||[The Food Chain - A Personalized Restaurant Recommender System](#project_24)|
||[CodeHonestly - Advanced Python Code Plagiarism Checker](#project_25)|
||[Malware Category Detection](#project_26)|
||[Android Malware Detection with metapath2vec](#project_27)|

---

### Wikipedia & Social Analysis
#### Racial Bias in Film Awards Shows: Oscars & Golden Globes <a name="project_01"></a>

* Group members: Rebecca Hu, Emily Kwan, Poonam Varkhedi

Materials: 
* [Website](https://mkwan13.github.io/180_final_site/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_01/)

Abstract: The Oscars has long been known as the pinnacle award for movies and anyone involved in the making of movies. However, recently it has come under fire with accusations of being racist. People argue that the Oscars are not being fair in who they deem to be winners. This controversy has led to other film award shows to pop up, including the BET awards. BET stands for “Black Entertainment Television” and aims to recognize minorities in the film industry that they feel are underrepresented in the Oscars and other mainstream award shows. Much of the controversy has been in the 21st century. This project aims to uncover any racial bias in mainstream awards shows over a period of 75 years to determine if this racial bias has been a problem for many years or if the bias has become more prevalent in recent years. It will also determine if the genre of a movie plays a part in getting an actor nominated for an Oscar. How we will be defining racial bias in the Oscars award show is if the distribution of race within the nominees are different than the distribution that exists in the film industry and Hollywood. For example if 25% of the nominees are Black but there are 50% of Hollywood that is Black then we would conclude that the Oscars do have a racial bias. If, however, the distribution is similar between the two, regardless of how skewed it is towards a certain race, we would not consider this racial bias within the Oscars since they are being consistent with the breakdown in the industry.

#### User Engagement in Wikipedia <a name="project_02"></a>

* Group members: Kenny Zhu, Jonathan Lin, Salma Shaikh

Materials: 
* [Website](http://jwlin17.github.io/DSC180B)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_02/)

Abstract: We present a new method of detecting user engagement with different Wikipedia articles over a period of time. We want to use this new method to help identify the supply and demand of the information available for different Wikipedia articles. We examine the amount of page views and the edit history of Wikipedia pages in the English Wikipedia as a way to holistically evaluate the user engagement with different Wikipedia articles.

#### Investigating the Trustworthiness of Wikipedia and the Media in the Scope of COVID-19 <a name="project_03"></a>

* Group members: Leena Elamrawy, Shanjiaoyang Huang, Calvin Tam

Materials: 
* [Website](https://schoothuang.github.io/DSC180B-Coronavirus-Wikipedia/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_03/)

Abstract: COVID-19 has gained increasing attention since its breakout in China in the early 2020. At this stage where full understanding of the virus is still developing, information about COVID-19 may sometimes be misleading as there is diverging, even self-conflicting, news coverage from newspapers to Internet. In our study, we are investigating which one is the most trustworthy and unbiased information source regarding to COVID-19, whether it is a traditional newspaper, or it is Wikipedia.


---

### Quantifying Artistic Style
#### Name That Raga: An Analysis and Classification of Indian Classical Music <a name="project_04"></a>

* Group members: Sruthi Vedantham, Saveree Joshipura

Materials: 
* [Website](https://sruthiv98.github.io/RagaClassifier/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_04/)

Abstract: Indian Classical Music is one of the oldest and richest forms of art. It has been developed over the course of centuries to include the vast range of intricacies, patterns, and emotions it presents today. Indian classical music can also be subsetted into many different ​ragas.​ A raga ​is defined as “a pattern of notes having characteristic intervals, rhythms, and embellishments, used as a basis for improvisation”. Our goal with this project is to quantify ragas in a way that could then be used to build a raga identification tool. By quantifying the features of a raga, we were able to build a raga identification classifier. We can then classify an audio clip into one of the 10 broader ragas, known as ​thaats. ​This tool is able to “listen” to an audio clip and identify the raga that the song is set to. It mimics what seasoned listeners of Indian classical music do already: try to identify the raga while listening to a composition. In extracting features from audio clips we aggregated from our personal collection, we found that each raga has quantifiable differences that distinguish them from one another. These differences include a variance in the occurrences/frequencies of each note (all audio clips were standardized to a scale set in C) as well as the varying patterns within the songs themselves (quantified in the form of bigram and trigram occurrences). These quantifiable differences were integral to our classification of each raga. Their distinct features enabled us to accurately classify an audio clip into its raga. By applying the frequency/occurrence of each note, as well as the patterns that each raga produces, as features to our classification model, we were able to generate accurate classifications given an audio clip.

#### Red Means Go: Analyzing YouTube Thumbnail Trends. <a name="project_05"></a>

* Group members: Saieashwar Mukund, Chase Oden, Matthew Widjaja, Christopher Wynne

Materials: 
* [Website](https://codencoding.github.io/Red-Means-Go/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_05/)

Abstract: YouTube has become a significant source of income for many content creators, and they are always looking for the best way to grow their channel. When a YouTube video gets more views, the Content Creator makes more money. The purpose of our project is to analyze the significance of the various features of a YouTube preview thumbnail that can contribute to a video’s success. We believe that there are features in YouTube thumbnails that can be extracted and used to identify what makes a video more appealing to potential viewers.

#### RestoreNet: Quantifying Image Restoration of World War II Images <a name="project_06"></a>

* Group members: Emmanuel Diaz

Materials: 
* [Website](https://emmanuel-diaz.github.io/RestoreNet/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_06/)

Abstract: Image Restoration has evolved with the use of Neural Networks and research has left us wondering what they can learn from data. I chose to investigate how Deep Generative Adversarial Networks can reconstruct World War II images from the process of degradation. Using a collection of World War II images, the network learns how to effectively restore selected regions of the image. Through training with smaller similar subsets to the target, we could achieve approximately similar results than training on the entire population, leading to better use of domain adaptation of GANS. The results show that finer selective masking performs better inpainting results than block selections. With more domain knowledge, GANs can perform closer approximate reconstructions of images.

#### MineSkins <a name="project_07"></a>

* Group members: Nicholas Smith

Materials: 
* [Website](https://koreanj.github.io/MineSkins_Website/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_07/)

Abstract: This project is a non-classical application of unsupervised learning which includes both generative art and natural clustering. The data set is a sample of roughly 3000 Minecraft skins, a 64x64 RGBA image, that is wrapped on top of each player’s character and can be seen in game.

#### What Makes a Super Bowl Commercial Super? <a name="project_08"></a>

* Group members: Chatson Frankenberg, William Bates

Materials: 
* [Website](https://furbeh.github.io/SuperBowlCapstoneWebPage/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_08/)

Abstract: The Super Bowl is annually the most watched television program, which means companies are willing to spend up to $5.6 million for a mere 30 seconds of the nation’s attention. In parallel to the financial evidence, the commercials have been described anecdotally as “ambitious”, “notorious”, and “must-have guests [to the main event]”. The cultural phenomenon of the Super Bowl commercial is well-recognized. Thus, the cultural analytics question becomes how modern data analysis techniques can help us to better decipher what makes these commercials so special and generally abnormal. To generate these results, we analyzed quantitative differences between television commercials that air during the Super Bowl and those that air any other time. As a branch of cultural analytics, this project seeks to determine the capability of data processing to validate or otherwise opine on the social consensus regarding the commercials. Our project will be more focused on the social dynamics of the commercials. We have analyzed a decade worth of Super Bowl commercials, comparing them to counterparts in visual and auditory attributes. Using techniques such as shot detection, spectral transformations, and text analysis, this project offers a complete discussion of the concept of attention-getting in advertising from an analytical viewpoint.

#### Book Cover Reader <a name="project_09"></a>

* Group members: Eric Wang, Jenny Luc

Materials: 
* [Website](https://studentofdsc.github.io/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_09/)

Abstract: The objective of the project was to find trends among different genres of book covers, and create a classifier that would categorize a book based on only its cover. We used OpenLibrary’s Subject API to download 500 images of each genre category, crime, horror, fantasy, romance, and science, totalling 2500 images that we worked with. Color statistics were calculated and graphed on a scatter plot. Based on graphs which visualized the basic color statistics of the book covers, we were unable to find trends among each genre. We later generated CNN feature vectors of each image, and graphed it using UMAP, and it didn’t show any clusters as well. We also do a comparison of RGB histograms for each cover to find its most similar book cover.


---

### Fair Policing
#### Analyzing the Media's Effect on SD Police Traffic Stops <a name="project_10"></a>

* Group members: Nathan Au, Huda Ahmed, Thomas Evans-Barton

Materials: 
* [Website](https://n2au.github.io/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_10/)

Abstract: Within the last few years especially, race and the media have become inextricably linked; in fact, it seems as though every other news story contains a racial aspect. And with this continuous stream of race related news, and the considerable amount of influence that the media has on public perception and action, it may be pertinent to question what affect these race related news stories are having. Media reports and news stories are incredibly wide reaching, and law enforcement officials are not impervious to having their subconscious biases swayed as any other citizen would. And while we know that race relations and the media are interconnected, we hope that by quantifying the effect that the coverage of race in the news has on police actions (specifically traffic stops), it may be possible to raise self-awareness around this issue in order to combat it. Perhaps if a police officer knew that they were statistically more likely to pull over a black driver after being exposed to a news story negatively portraying black people, they would be able to keep this in mind when on patrol. In general, we are interested in how events that are centered around singular racial groups have an effect on police stop bias when said events are heavily broadcasted in the media. Specifically, we hope to use Google search rates combined with San Diego public police data to find how stop rates for races change as racial topics gain public interest. Ultimately, we predict that Hispanic and Black drivers’ stop rates will increase following a negative race related media story, when compared to their stop rates before said event, and their stop rates in similar seasonal time frames.

#### Does the Race of a Police Officer Influence Traffic Stop Outcomes? <a name="project_11"></a>

* Group members: Jared Andrews, Hetsvi Navnitlal, Cole Richmond

Materials: 
* [Website](https://jaredandrews99.github.io/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_11/)

Abstract: In recent years, claims of racial discrimination by police officers have led to numerous investigations and lawsuits. While many studies have examined how a person’s race influences a police officer’s decision-making during any interaction between the two parties, there is less research investigating whether the officer’s race plays an additional role. In this paper, we expand on previous studies by investigating how the races of both the police officer and the driver affects the officer’s decision to first initiate the stop and then on various other decisions made during the course of the stop.  Isolating several important judgements officers make during traffic stops, this paper examines whether the races of the driver and the officer affect the officers' decisions to stop the driver, to search the driver, to issue a citation to the driver and/or to arrest the driver.  Using the Veil of Darkness and propensity score matching analyses, we show that police officers, regardless of their race, are more likely to stop, search and arrest drivers whose race is different from their own.

#### Is Predictive Policing Preventative? An analysis of predictive policing systems and their effect on crime. <a name="project_12"></a>

* Group members: Luis Diaz, Stephanie Moore, Julian Yeh

Materials: 
* [Website](https://chuanyuanyeh.github.io/predpol_study/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_12/)

Abstract: In our study we look at the effects of predictive policing systems and whether it reduces crime. In our paper we look specifically into Predpol, a predictive policing system that has been used by police departments around the United States and has spurred many controversies. We will investigate whether Predpol has a causal effect of reducing crime and if there is any bias in the system. Our study focuses on data from LAPD who has used Predpol since 2013. The results of our study will determine whether Predpol has an effect on crime and explore which crimes, areas, and people are most affected by the system.

#### Effects of Recreational Marijuana Legalization on Traffic Collisions in California <a name="project_13"></a>

* Group members: Yingwen Zhang, Bo Hu, Jialin Shan

Materials: 
* [Website](https://boh016.github.io/fair_policing/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_13/)

Abstract: Published reports from California and other states that legalized the use of recreational marijuana have stated that recreational marijuana legalization(RML) brings an increase over traffic collisions in general. However, there is no detailed paper or report that evaluates such an increase from different perspectives with considerations of various affecting variables. Moreover, the long-term effect of RML is difficult to predict given that RML in California happened approximately three years ago. Therefore, we are skeptical that RML would bring a negative impact on traffic collisions in California and such impact was mainly due to drivers’ behaviors. We approached the analysis with a difference-in-difference model using California statewide collision data, and the data is statistically compared with traffic collisions data from South Dakota, a state where marijuana is fully illegal. Collision data from two states are compared from different perspectives so a comparison can be established with RML as the tested variable. Having applied the model, we demonstrated the difference after RML in California is statistically significant, while considering possible confounders, such as urbanization and time.


---

### Clustering the Human Genome
#### Genetic Differences Between Glioblastoma Multiforme and Low-Grade Glioma Populations: How Does Copy Number Variation Distinguish Each Disease? <a name="project_14"></a>

* Group members: Siqi Huang, Noah Inada, Yifei Ning

Materials: 
* [Website](https://siqihuang47.github.io/dsc180b_visualization/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_14/)

Abstract: The goal of this project is to identify genetic differences between GBM and LGG populations. This is important because these genetic differences may be useful for diagnosing these diseases in people. This was done by comparing each population’s copy number variation focal scores. Our project’s question is: How does copy number variation of GBM and LGG distinguish? Our hypothesis is that the GBM population will have more copy number variation because GBM is more malignant, and so has more genetic mutations.In comparing the focal scores it was found that the GBM population had 1.5 times more duplications and deletions than the LGG population, confirming our hypothesis. And, there were specific sets of outlying genes in the GBM population that distinguish it from the LGG population - but only on a cross-case analysis level. Practically, it is not applicable to use them as markers for diagnosis. This project confirms the hypothesis that GBM has more genetic variation in its copy number variation, but does not support the approach to use copy number variation as a method of diagnosing either disease. We analyze the genetic differences by using the data from The Cancer Genome Atlas (TCGA) which is an online repository of cancer data. To understand how we analyze the genetic differences, we would introduce some important terminology that are helpful.

#### Meta-Analysis to find Genes related to T2Ds <a name="project_15"></a>

* Group members: Kelvin Nguyen, Fernie Qin

Materials: 
* [Website](https://sites.google.com/view/type-ii-diabetes/home)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_15/)

Abstract: To accomplish our goal, we use summary statistics data from genome-wide association studies (GWAS), which search the genome for small variations, called single nucleotide polymorphisms (SNPs), that occur more frequently in people with a particular disease than in people without the disease. In our research, we conducted a meta-analysis on  five different summary statistics done on Type two diabetes. We analyzed over 15 million different alleles to find that there are certain regions of the genome that contribute more to Type two diabetes than others. Specifically, our study found from the data we used that certain regions of chromosome 10, 11, and 6 are associated with T2Ds. Some specific genes we found that seemed to be correlated with T2Ds due to their very low p-values are TCF7l2, CDKAL1, and KCNQ1. In particular, TCF712 is a transcription factor influencing the transcription of several genes, thereby exerting a large variety of functions within the cell and it was named a prime suspect in causing type 2 diabetes. CDKAL1 is a protein coding gene and is somewhat correlated with type 2 diabetes. KCNQ1 is a protein that supports the creation of potassium channels and is also somewhat believed to be correlated with type 2 diabetes.

#### Predicting Disease Risk Through Machine Learning <a name="project_16"></a>

* Group members: Michael Sorenson, Enrique Sanchez, Allston Fojas

Materials: 
* [Website](https://www.sanchezenrique.com/PredictingDiseaseWebsite/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_16/)

Abstract: Traditional epidemiology techniques, most notably polygenic risk scoring, have been used by researchers and well-known companies, such as Takeda, MiCom Labs, and 23andMe, to calculate the disease risk of patients and consumers. However, recent research has shown limitations in polygenic risk scoring due to its inability to model high dimensional data with complex interactions (Wai, 2019). As humans, millions of potentially disease-contributing genetic variants exist in the genome, so the inability to leverage such information limits the power of polygenic risk scoring to accurately determine the disease risk of individuals. In this report, the viability of machine learning in disease risk prediction for Coronary Artery Disease, Alzheimer’s, and Diabetes Mellitus is explored. It is shown how machine learning models, including Support Vector Machines (SVMs), Logistic Regression, K Nearest Neighbors, Decision Trees, Random Forest, and Gaussian Naive Bayes, compare in their ability to effectively predict disease risk and how they may offer alternate and possibly better methods over traditional techniques.

#### Cancer Survivability & Genetic Mutations across Germ Layers <a name="project_17"></a>

* Group members: Eric Jiang, Alexandra Keamy, Shonak Shah, Samantha De-La-Torre

Materials: 
* [Website](https://e5jiang.github.io/germ_layers_page/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_17/)

Abstract: During gastrulation, the embryo is reorganized, from a blastula, into three germ layers (ectoderm, endoderm, and mesoderm) that form the internal structure of an organism. Through uncontrolled cell division and mutations, the internal organs created by these germ layers can potentially re-express genes that haven’t been expressed since the early stages of an embryo. Previous studies have found that certain re-expressed embryonic genes are present in cancer cells. This made us interested in how these genes affect the severity of cancers in their respective germ layers. Our research study aims to look at what type of relationships exist between the survival rates and cancer mutations that originate from the germ layers. Using data from the National Cancer Institute’s Genomic Data Commons Portal, MAF files were collected and merged to create three MAF files that combined all the organs for each germ layer. We created visualizations for each layer to summarize mutations, computed the average number of significant differentially mutated genes, and implemented survival analyses. The mutations between the endoderm and the mesoderm had the smallest number of significantly differentially mutated genes between them than any other combination of the germ layers. Endoderm had the highest and most consistent hazard ratios for genes associated with poor survival for one gene, two-gene, and three-gene combinations. In conclusion, the survival rates for mesoderm and endoderm were less related than other combinations of layers.

#### Evaluating miRNA as Biomarkers for pre-Type 1 Diabetes <a name="project_18"></a>

* Group members: Pete Sheurpukdi, Derrick Liu

Materials: 
* [Website](https://derrick56007.github.io/miRNA_preT1Diabetes/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_18/)

Abstract: Type 1 diabetes is an autoimmune disorder in which the body’s immune cells attack its insulin producing cells. The cause for this disease is largely unknown and there is no cure. We are interested in finding what may be the cause of this disease by studying the difference in immune cells in healthy and pre-Type 1 diabetic individuals. Specifically, we will be looking at the difference in micro-RNA (miRNA) levels found in the immune cells. miRNA are small non-coding RNA that regulate whether or not messenger-RNA (mRNA) are translated into proteins. With data from the Australian Red Cross, we found that there are clear differences in the immune cells’ miRNA expression levels, and that the levels of miRNA expressed in the prediabetic individuals have been found to be positively correlated with reduced insulin production, a decrease in the protein FOXP3 which is correlated with increased autoimmunity, as well as other miRNA correlated with symptoms of Type-1 diabetes such as changes in vision possibly leading to blindness.

#### Genome-wide association studies on Alzheimers Disease <a name="project_19"></a>

* Group members: Haoshu Qin, Zhuoyuan Ren, Haoming Zhang

Materials: 
* [Website](https://tonyzhanghm.github.io/adgwas_website/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_19/)

Abstract: Alzheimer's Disease (AD) is a progressive disease that could cause physical and psychological damages, including memory loss, personality alteration, disorientation, etc. Recently, some studies have identified Apolipoprotein E (APOE) as the most gene associated with Late-Onset Alzheimer's Disease. Scientists are now working to discover more non-APOE genes that may be associated. In this study, we tested nine non-APOE genes reported in previous studies on the dataset from University of Miami, including 176 cases and 188 controls. We also conducted association tests on the dataset and compared it with the result of the meta-analysis on three different datasets. Nominal significant associations ($P < 0.05$) were observed on two genes (CR1 and PICALM) out of the nine we tested on. We also found four genes (CSNK1E, CACNG2, SLC17A6, LINGO2) that showed significant associations during the hypothesis test. However, none of the four genes were accepted in the meta-analysis.


---

### Malware / Graph Learning
#### Exploration of Graph Embedding Techniques in HinDroid <a name="project_20"></a>

* Group members: Yuxin Zou, Jeff Liao, Zheng Tang

Materials: 
* [Website](https://davidzyx.github.io/HinDroid-with-Embeddings/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_20/)

Abstract: Due to the abundance of Android users and the open source nature of the OS, there is an exorbitant amount of malicious malware apps. Malware detection systems can help prevent attackers from taking control of a user's device. Our method expands on HinDroid to take advantage of the Heterogeneous Information Network, which is used to extract graph embeddings for both App and API nodes. We applied word2vec, node2vec and metapath2vec to the network, and empirically proved they are able to capture a longer chain of relationships between APIs. We show that using these different graph embedding techniques can still achieve similar accuracies to that of HinDroid's.

#### HinReddit: Understanding Hate and Conflict in Reddit Communities <a name="project_21"></a>

* Group members: Chengyu Chen, Shuibenyang Yuan, Yanyu Tao, Yu-Chun Chen

Materials: 
* [Website](https://syeehyn.github.io/hinreddit/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_21/)

Abstract: As countless social platforms become more accessible online, the existence of negative posts and hateful speech also become more and more common. There are various attempts trying to solve these problems by detecting these hateful posts. In our project, we investigated contents from Reddit. Our goal is to classify hateful posts from the normal ones. This not only enables platforms to improve user experiences, but also helps to maintain a positive online environment. What makes our project special is: Instead of using NLP techniques, we will be using graph embedding methods. Specifically we will be constructing a heterogeneous network that captures several relationships among users and posts. This approach enables us to classify memes or other image-centric posts in which the nlp method can not be applied. We hypothesize that certain relationships exist among users who write hateful posts and the posts they interact with, and that’s why we believe our approach of constructing the graphs will work well in hateful post classification.

#### Heterogenous Graph Embedding for Record Linkage <a name="project_22"></a>

* Group members: Wesley Kwan, Ittoop Shibu, Udaikaran Singh

Materials: 
* [Website](https://shinushibu1798.github.io/recordLinkage/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_22/)

Abstract: Record linkage is the process of relating entities within different datasets. The primary use for record linkage is entity resolution, which allows for efficient joining between multiple heterogenous relations that do not have a clear discriminatory key and removes duplicates from a single relation. We look to represent this problem as an binary edge prediction problem on heterogenous graphs assuming that the dataset contains distinct pairs. Our approach involves converting datasets into graph embeddings, applying node2vec and training traditional machine learning models in order to find appropriate matches between datasets. This approach should enable sophisticated relationships between entities to be preserved. Our results demonstrate that our model lags behind a naive baseline model, in that our model only surpasses the baseline model for a single dataset. However, we also found that our model tends to beats the naive model as our datasets scale up with our modeling achieving an accuracy of 79% compared to the 59% for the baseline.

#### Improving and Explaining HinDroid <a name="project_23"></a>

* Group members: Umang Saraf, Daniel Alemu, Liam Mccarthy

Materials: 
* [Website](https://malware-detection-blog.herokuapp.com/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_23/)

Abstract: Recent work introduced a model using a Heterogeneous Information Network (HIN) representation of Android applications utilizing a meta-path approach to link applications through the API calls contained within them. It was found with multi-kernel learning, the model was able to identify malicious applications with high accuracy. This recent work was the first approach of this kind to be published; therefore, a replication process would allow for deeper understanding of this approach. In this paper, we introduce a framework for improving upon the model through scalability and testable measures with the purpose of maintaining or increasing accuracy while creating an easily executable pipeline. In particular, we employ dimensionality reduction and stochastic techniques to achieve reasonably replicable results. Additionally, we attempt to understand, through model explainability practices, the inner mechanisms of the complex model to better understand possible inaccuracies which may arise in creating a scaled version of a HIN approach.

#### The Food Chain - A Personalized Restaurant Recommender System <a name="project_24"></a>

* Group members: Lindsey Doyle, David Thierry, Daniel Hartmann

Materials: 
* [Website](http://team05.pythonanywhere.com/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_24/)

Abstract: In today's times, recommender systems are everywhere. Most of us are familiar with recommender systems whether we know it or not. Recommender systems entice users with relevant suggestions based on the choices they have made. Netflix, YouTube, Tinder, Amazon, and Yelp are all examples of companies that utilize recommender systems in their everyday operations. Our project will focus on food recommendations with Yelp Data. Yelp's system currently returns recommendations based off of the general popularity of the restaurant. However, we know that recommending food is a very subjective decision. For this reason, we intend to build a recommender in which the user can choose the specifics of how the restaurant recommendation is returned. Through this, idea is that it will not only recommend to a user a restaurant to eat at but also give the user an explanation of the recommended restaurants based on the option that they chose. We will utilize the data from Yelp.com. From this data, our system will transform the data into a digestible set of relationships. The user will then be able to handpick the specific relationships which they think matter most for their particular needs. We are developing this user-customizable, content-based restaurant recommender system so that you can decide for yourself which parts of your dining experience matter most.

#### CodeHonestly - Advanced Python Code Plagiarism Checker <a name="project_25"></a>

* Group members: Xiao Wang, Zoe Li, Sizhu Chen, Kevin Zhou

Materials: 
* [Website](https://www.codehonestly.com/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_25/)

Abstract: We recognized that code plagiarism is a serious issue in undergraduate programming courses and attempted to tackle it. Unlike the current string matching based algorithm, we developed an algorithm to compare the <a href="https://en.wikipedia.org/wiki/Abstract_syntax_tree">Abstract Syntax Tree</a> of source codes and then calculate a similarity score that captures a deeper semantic of the source codes than the widely used anti-plagiarism system <a href="https://theory.stanford.edu/~aiken/moss/">MOSS</a>. Additionally, we are able to filter out the influence of template codes and thus reduce the false-positive rate. We have wrapped up the algorithm into a functional website, in which you can upload your codes or select from our example codes to interact with us and receive an immediate result.

#### Malware Category Detection <a name="project_26"></a>

* Group members: Nancy Vuong, Karan Sunil, Kevin Elkin

Materials: 
* [Website](https://nancyvuong.github.io/dsc180b_website/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_26/)

Abstract: With 20% of Android apps on the google play store being malicious, detection of malware apps has become increasingly important. We performed a static code analysis to get a better understanding of which APIs in the code are responsible for the malicious behaviour. Using relationships between APIs and apps we create a heterogeneous information network. Different metapaths (kernels) in the network can help us predict the category of malware that an app belongs to. We considered 5 broad categories of malware - benign, trojan, ransom, backdoor and adware. Different kernels were good at classifying different categories of malware and hence we decided to use a multi kernel model to get the best of all kernels. In cyber-security understanding your model is crucial. Imagine the ramifications of a hacker understanding your model better than you. To better understand our model, we studied our model on two levels - app level, API level. For the API level we looked at the correlation between APIs and the classification result. This helped us recognise which APIs were important. Further, we developed a ranking algorithm to identify APIs that were unique to a specific category of malware. We then used APIs that were unique to benign to see if we could trick our model into predicting malware apps as benign. To understand how specific apps affected our classification output, we analysed the SVM weights of our model and looked into how apps cluster together using tSNE.

#### Android Malware Detection with metapath2vec <a name="project_27"></a>

* Group members: Shuliang Mai, Xuanyu Wu, Bo Zhang

Materials: 
* [Website](https://maishuliang.github.io/malware-detection-viz/)
* [Project GitHub Repository](https://github.com/DSC-Capstone/projects-2019-2020/tree/master/project_27/)

Abstract: Nowadays, Android is dominating the smartphone market as an open source and customizable operating system. Many hackers targeted Android applications by disseminating malwares, posing serious threats to users. Historically, mobile security products such as Norton and Lookout, are heavily relied upon as major defense against such threats. Recently, many machine learning based methods have been invented for malware detection. A successful one of them is creating features from a Heterogeneous Information Network (HinDroid). However, it is confined in such a way that it ignores more comprehensive information which can be extracted from graph representation. In this project, we will explore different meta-paths and incorporate various graph embedding methods in the task of malware prediction. We propose to build upon our previous work in HinDroid replication, more specifically we will attempt to use deep learning graph embedding techniques. The success of this project will not only be determined by the performance of our final model but more importantly the evaluation of different graph embedding methods and further reasoning on the result.


---


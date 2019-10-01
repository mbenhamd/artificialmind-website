---
layout: post
title: "Twitter Sentiment Analysis"
description: "Build a powerful platform system for real-time data analysis of tweets on twitter trends."
date: 2019-09-23
feature_image: https://github.com/mbenhamd/database-publication-latex/blob/master/real_stream-schema.png?raw=true
tags: [Twitter, Sentiment Analysis, Streaming, Spark]
---

*Presentation of a Twitter Sentiment Analysis available on my [Github repository](https://github.com/mbenhamd/twitter-sentiment-analysis) and [Publication](https://github.com/mbenhamd/database-publication-latex/blob/master/publication.pdf)*\:

### Technologies

Scikit-learn, Spark, AWS EMR, S3, Lambda, Kinesis, API Gateway, MQTT, React JS, RDS (Postgres SQL).

*Website for a demo: [here](https://twitter.yannistannier.io)*
<!--more-->

##### Define a problem you want to solve

Our main purpose is to build a powerful platform system for real-time data analysis of tweets on twitter trends. We also want to analyse all the tweets of 2017 based on a downloaded sample of data (average of 6 To). All this data analysis will be accessible via a web interface that will be developed. We want to build a powerful system of sentiments analysis by making a database structure of tweets which is relevant about impacts and effects. The system should provide a faster way to execute Machine Learning methodologies behind data extracted from Twitter. Analysis news actuality by getting an analysis on actual trends with real stream data and building an efficient web interface to get results easily and keep a control on data continuously. We also wanted to make a comparison of sentiment analysis methods, for which we have taken a publication and tried to improve the results obtained and to propose new methods.

##### Results by month for joy and sadness emotions during the 2017

![](https://github.com/mbenhamd/database-publication-latex/blob/master/monthly_analysis_joy_sadness-exemple.png?raw=true)

The complete archive was downloaded on [Archive.org](https://archive.org/details/twitterstream) for a total of 5,8 Terabytes of data and we count 1,7 billion of tweets. A simple collection of JSON grabbed from the general twitter stream, for the purposes of research, history, testing and memory. This is the Spritzer version, the most light and shallow of Twitter grabs. Unfortunately, we do not currently have access to the Sprinkler or Garden Hose versions of the stream. For some technical reasons, only English tweets were analysed. The email of the uploader [here](jscott@archive.org).

##### What do we conclude ?

In this report we have presented a sentiment analysis tool on a Web interface. In one hand we used data from an archive and in the other hand we used real time stream analysis. Due to the absence of labelled data we couldn't argue on reliability of data. This recent publication really question us about the limit on software engineering [here](http://www.inf.usi.ch/phd/lin/downloads/Lin2018a.pdf), but they did not explored deep learning [here](https://www.researchgate.net/publication/320101315_Textmining_at_EmoInt-2017_A_Deep_Learning_Approach_to_Sentiment_Intensity_Scoring_of_English_Tweets) and what we could achieve with this learning techniques using neural network fully connected that we always only get better with time because of optimized function behind and great computation that we have due to GPU in aim to build deep learning classifier [here](https://reader.elsevier.com/reader/sd/94DCC5BBC6744B82108E1435810AE13BED6ED08D41531BA6CD0114B7355D4C44FEC2A6F8C55F0B14ABCFEFF5655CD608). There are also other features for the real stream [here](https://twitter.yannistannier.io/#/realtime) such as geolocation of people, we could then generate a graph as a center to any user and know its impact on an interactive map, this would allow among other things to know the influence for example. To conclude, we think that having access to geolocation data and build a powerful neural network trained and design for sentiment analysis could be a great idea for future work.

##### Keywords

Data Mining, Natural Languages Processing, Sentiment Analysis, Classification, Text Mining, Convolutional Neural Network, TensorFlow, Spark.
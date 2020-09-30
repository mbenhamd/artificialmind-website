---
layout: post
title: "A weakly supervised adaptive triplet loss for deep metric learning"
description: "The method uses weakly labeled product description data to implicitly determine fine grained semantic classes, avoiding the need to annotate large amounts of training data."
date: 2019-10-01
feature_image: https://miro.medium.com/max/1204/0*_WNBFcRVEOz6QM7R.
tags: [Loss, Weakly Supervised, Learning Metrics, Triplet Loss, Semantic Classes]
---

*Presentation of a Paper avalaible [here](https://arxiv.org/pdf/1909.12939.pdf)*\:

The article presents an approach to the major problems of learning metrics on the search for similarities in the case of image data sets. The authors present a method called a weakly supervised adaptrive triplet loss (ATL) that can capture fine-grained semantic similarity.
It's written by Xiaonan Zthao, Hian Qi, Rui Luo and Larry Davis from Amazon R&D.
<!--more-->

##### Introduction
In this paper, they apply different distance metric learning on fashion datasets. We can cite a well-known named DeepFashion that contains over 800,000 diverse fashion images ranging from well-posed shop images to unconstrained consumer photos and it is annotated with rich information of clothing items. Each image in this dataset is labeled with 50 categories, 1,000 descriptive attributes, bounding box and clothing landmarks.

![](http://mmlab.ie.cuhk.edu.hk/projects/DeepFashion/attributes.jpg)

A lot of approaches exist like contrastive loss where it produce a high loss (a penalty) when predicted distance is large when two object are similar and a low loss when the predicted distance is small, and vice versa for the case when the objects are different. Then we have triplet loss where a baseline (anchor) input is compared to a positive (truthy) input and a negative (falsy) input. The distance from the baseline (anchor) input to the positive (truthy) input is minimized, and the distance from the baseline (anchor) input to the negative (falsy) input is maximized. In other word, in triplet loss training a triplet contains two images belonging to the same class, referred to as the anchor and positive samples, and a thirs image, from a different class, which is referred to as the negative sample.

$$d(a,p)-d(a,n)+m$$

where a,p and n are anchor, positive and negative samples, respectively $$d(.,.)$$ is the learned metric function and $$m$$ is a margin term which encourages the negative sample to be further from the nachor than the positive sample. As they write in their paper, DNN base trimplet loss training commonly uses stochastic gradient decent on mini batches.

###### What do they propose

Deep metric learning algorithms fail to learn distances that capture fined-grained sub-categories. Such fine-grained visual similarity distances are important to learn generalized visual features and to have robust performance on cross-domain data. So they construct an embedding of the product with text product production and use this to drive an adaptive triplet loss.


##### Method

They dataset is composed with images and textual description in the form of natural language or a set of key words.
During the training, they transform images into unit vector by defining the mini-batch weakly



##### Result

##### Discussion 
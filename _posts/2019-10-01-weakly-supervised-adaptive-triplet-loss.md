---
layout: post
title: "A weakly-supervised adaptive triplet loss for deep metric learning"
description: "The method uses weakly labelled product description data to implicitly determine fine-grained semantic classes, avoiding the need to annotate large amounts of training data."
date: 2019-10-01
feature_image: 
tags: [Loss, Weakly Supervised, Learning Metrics, Triplet Loss, Semantic Classes]
---

<img src="https://miro.medium.com/max/1204/0*_WNBFcRVEOz6QM7R." alt="drawing" width="auto" max-width="100%" height="100%" />
<br>

*Presentation of a Paper avalaible [here](https://arxiv.org/pdf/1909.12939.pdf)*\:

The article presents an approach to the significant problems of learning metrics on the search for similarities in the case of image data sets. The authors present a method called a weakly supervised adaptive triplet loss (ATL) that can capture fine-grained semantic similarity.
It's written by Xiaonan Zthao, Hian Qi, Rui Luo and Larry Davis from Amazon R&D.
<!--more-->

##### Introduction
In this paper, they apply different distance metric learning on fashion datasets. We can cite a well-known named DeepFashion that contains over 800,000 diverse fashion images ranging from well-posed shop images to unconstrained consumer photos, and it is annotated with rich information of clothing items. Each image in this dataset is labelled with 50 categories, 1,000 descriptive attributes, bounding box and clothing landmarks.

![](http://mmlab.ie.cuhk.edu.hk/projects/DeepFashion/attributes.jpg)

A lot of approaches exist like contrastive loss where it produces a high loss (a penalty) when the predicted distance is considerable when two objects are similar and a low loss when the expected spread is small, and vice versa for the case when the items are different. Then we have triplet loss where a baseline (anchor) input is compared to a positive (truthy) input and a negative (falsy) input. The distance from the baseline (anchor) information to the positive (truthy) input is minimized, and the distance from the baseline (anchor) input to the negative (falsy) intake is maximized. In other words, in triplet loss training a triplet contains two images belonging to the same class, referred to as the anchor and positive samples, and this image, from a different class, which is referred to as the negative sample.

$$d(a,p)-d(a,n)+m$$

Where a,p and n are anchor, positive and negative samples, respectively $$d(.,.)$$ is the learned metric function, and $$m$$ is a margin term which encourages the negative sample to be further from the anchor than the positive sample. As they write in their paper, DNN based triplet loss training commonly uses stochastic gradient descent on mini-batches.

###### What do they propose

Deep metric learning algorithms fail to learn distances that capture fined-grained sub-categories. Such fine-grained visual similarity distances are essential to learn generalized visual features and to have a robust performance on cross-domain data. So they construct an embedding of the product with text product production and use this to drive an adaptive triplet loss.


##### Method

The dataset is composed of images and textual description in the form of natural language or a set of keywords.
During the training, they transform images into the unit vector by defining the mini-batch weakly.

##### Result

##### Discussion 
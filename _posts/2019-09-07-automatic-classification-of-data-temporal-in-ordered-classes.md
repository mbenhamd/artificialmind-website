---
layout: post
title: "Automatic classification of data temporal in ordered classes"
description: "Implementing Fisher's algorithm (dynamic programming)"
date: 2019-09-07
feature_image: /ressources/time-series/time-series.png
tags: [R, Time series, Unsupervised Learning, Dynamic Programming]
---

*Presentation of automatic classification of data temporal in ordered classes available on my [Github repository](https://github.com/mbenhamd/series-temporelles-fisher)*\:

###### Abstract

Automatic classification or clustering consists of partioning a set of objects (instances) described by a set of variables in homogeneous groups (classes). It turns out that for some data, these are a sequence of numerical values ​​representing the evolution of a specific quantity over time, hence the notion of time series. The aim will be to propose a classification system from various datasets using Fisher's dynamic algorithm and to see its effectiveness by comparing it to other methods.
<!--more-->

###### Introduction

As part of our school curriculum, we are required to carry out a project concerning unsupervised learning. The objective of this project is to study a clustering method that searches for ordered classes in a timeline. Fisher's dynamic programming method is used for segmentation of time signals, or for change detection in a data sequence. In speech recognition systems, for example, this type is exploited. method for partitioning audio signals into associated time ranges to different speakers who are then identified. More generally, organizing a sequence of data into homogeneous segments is a process that helps to better organize them.

![alt text](/ressources/time-series/data.png "MNIST Sample")

###### Conclusion

This non-superimposed learning project allowed us to implement Fisher's dynamic programming algorithm and compare it to the CAH and K-means. We could see that Fisher's algorithm is clearly appropriate within the framework of time series since it takes into account the temporality of data while K-Means and CAH Ward have a spatial approach. Indeed these two other methods look at the datasets as a set of points in a space with one or more dimensions without taking into account the temporal criterion. Even though we have some optimizations thanks to the use of appropriate package, we have as prospects to see the efficiency of the algorithm on a GPU (more appropriate component for the intensive matrix computation) because when we are dealing with larger data sets it is very likely that the nonlinear complexity of the algorithm poses a big problem.
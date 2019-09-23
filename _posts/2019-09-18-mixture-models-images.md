---
layout: post
title: "Mixture models applied to usual image data"
description: "Implementation of different learning algorithms by reinforcement"
date: 2019-09-18
#feature_image: https://github.com/mbenhamd/twitter-analysis-mas/blob/master/app-screenshot.png?raw=true 
tags: [Mixture Models, Image Analaysis, Unsupervised Learning]
---

*Presentation of mixture models applied to usual image data available on my [Github repository](https://github.com/mbenhamd/mixture-model-images)*:

# Abstract

Mixture models are routinely used to extract features from speech data, but also in object detection from images. By deducing parameters from the distribution of the data, they make it possible to predict the location of the objects with each image of a video sequence. The Gaussian mixing model is a probabilistic model that will be used to represent normally distributed subpopulations within a global population. Mixing models in general do not require knowing which subpopulation belongs to a data point, which allows the model to automatically learn subpopulations. As the assignment of subpopulations is not known, it is a form of unsupervised learning.

![alt text](https://github.com/mbenhamd/mixture-model-images/blob/master/plot/show_images_mnist.png?raw=true "MNIST Sample")
<!--more-->


# Introduction
The classification of images is one of the major challenges of image processing and computer vision. However, the application of mixture models applied to segmentation presents some difficulties. For the classic blend statistical model, each pixel must be associated with exactly one class. This hypothesis may not be realistic. So,
several methods have been proposed to work around this problem (such as fuzzy classification). This approach gives satisfactory results in many cases, but in most cases the assumption of a single Gaussian generally limits the accuracy of the model.
We will use the EM algorithm to estimate the parameters of Gaussian mixtures.
Then the Gaussian mixing model is a flexible probabilistic model and a powerful modeling tool. It can be used to provide a group-based model in the area of ​​pattern recognition.
However, the application presents some difficulties since it is sensitive to noise.

![alt text](https://github.com/mbenhamd/mixture-model-images/blob/master/plot/pca_eig_mnist5.png?raw=true "MNIST Sample")

![alt text](https://github.com/mbenhamd/mixture-model-images/blob/master/plot/t-sne_mnist_mm.png?raw=true "MNIST Sample")

# Conclusion

In this project, we made a lot of comparisons between the 5 different datasets. We have seen several types of classification methods (hierarchical ascending classification, partitioning with Kmeans) but we have been able to explore the models of mixtures in several ways.
Indeed, we have noticed that factor analysis methods can help to learn a mixing model without having to envy auto-encoders, but finally the temporal complexity of them leaves something to be desired.
Moreover the mathematics behind the mix models are more difficult to access and therefore less attractive to the general public.
The project was very informative as we were able to implement many methods from unsupervised learning.

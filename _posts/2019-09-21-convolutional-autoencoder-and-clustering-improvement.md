---
layout: post
title: "Convolutional Autoencoder and clustering improvement"
description: "Discrimination Characteristic Extraction Models"
date: 2019-09-21
#feature_image: /ressources/ensemble-method/boxplot.png
tags: [Autoencoder , PCA, t-SNE, K-means]
---

<img src="https://github.com/mbenhamd/autoencodeur-convolutionel-extraction-caracteristiques/blob/master/auto-encoder-conv.PNG?raw=true" alt="drawing" width="auto" max-width="100%" height="100%" />
<br>


*Presentation of comparison of discrimination characteristic extraction models available on my [Github repository](https://github.com/mbenhamd/autoencodeur-convolutionel-extraction-caracteristiques)*\:

### Abstract

In machine learning, feature extraction starts from of an initial set of measured data and constructs derived values (characteristics) intended to be informative and not redundant. This has as a consequence of facilitating the subsequent stages of learning and generalization by leading to better human interpretations. In this document, we will propose some visualization techniques and Data Reduction on the Fashion-MNIST Dataset in Combination with a learning model. <!--more-->

The idea of auto-encoders was mentioned for the first time in 1986, in an article analyzing in depth the backpropagation. In the following years, the idea resurfaced in other documents of research. An article published in 1989 allowed to introduce further auto-encoders by putting in the ability to extract the characteristics linear. Subsequently, it was discovered that one could discover nonlinear factorial representations. In this context, we had as mini-project to make the comparison between the ACP and the auto-encoders to a complex data set somehow. Then we will try to visualize these results using a method clustering to see the consequences of encoding.

We learned a lot through this mini project since it involves visualization and clustering techniques. We could also see the different characteristics of the auto-encoders and their variants. Following of the exercise on encoders, we found that auto-encoders could help us improve the results of clustering in the context of a dataset that we do not know the class or classes associated. Then the t-SNE will allow us to visualize the meaning of our data to through the distribution of points. In addition, we found that the divergence of Kullback-Leibler and its relationship with mutual information was useful to evaluate our results. For the rest, we could have built an architecture using a variational autoencoder in addition to the convolutional layers and then tried several parameters for K-means to retain the one that would have given us the best precision. Finally, it was a project that allowed us to explore, visualize and classify the dataset Fashion-MNIST which is more complex than MNIST.
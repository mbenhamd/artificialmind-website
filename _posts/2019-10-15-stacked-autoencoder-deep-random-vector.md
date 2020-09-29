---
layout: post
title: "Stacked Autoencoder Based Deep Random Vector Functional Link Neural Network for Classification"
description: "Extreme learning machine (ELM), which can be viewed as a variant of Random Vector Functional Link (RVFL) network without the input-output direct connections, has been extensively used to create multi-layer (deep) neural networks. Such networks employ randomization based autoencoders (AE) for unsupervised feature extraction followed by an ELM classifier for final decision making."
date: 2019-10-15
feature_image: https://ars.els-cdn.com/content/image/1-s2.0-S1568494619306350-gr3.jpg
tags: [Stacked Autoencoder, Random Vector Functional Link, Extreme Learning Machine, Deep Learning]
---

*Presentation of a Paper avalaible [here](https://arxiv.org/pdf/1910.01858.pdf)*\:

Extreme learning machine (ELM), which can be viewed as a variant of Random Vector Functional Link (RVFL) network without the input-output direct connections, has been extensively used to create multi-layer (deep) neural networks.
Such networks employ randomization based autoencoders (AE) for unsupervised feature extraction followed by an ELM classifier for final decision making. Each randomization based AE acts as an independent feature extractor and a deep network is obtained by stacking several such AEs. Inspired by the better performance of RVFL over ELM, in this paper, we propose several deep RVFL variants by utilizing the framework of stacked autoencoders. Specifically, we introduce direct connections (feature reuse) from preceding layers to the fore layers of the network as in the original RVFL network. Such connections help to regularize the randomization and also reduce the model complexity. Furthermore, we also introduce denoising criterion, recovering clean inputs from their corrupted versions, in the autoencoders to achieve better higher level representations than the ordinary autoencoders. Extensive experiments on several classification datasets show that our proposed deep networks achieve overall better and faster generalization than the other relevant state-of-the-art deep neural networks.
<!--more-->

##### Introduction
Deep or multi-layer neural network has become a popular machine learning
method in recent years. From image classification to action recognition to many other tasks, deep neural networks (DNNs) are ubiquitously used [1]. The power
of deep learning, also known as representational learning, stems from its meaningful feature extraction capabilities via multiple hidden layers [2]. Deep neural
networks are successful because they can extract complex structures and build
an internal representation from several hidden layers [3]. One among many
techniques of creating a deep neural network is based on an autoencoder (AE).
Multiple AEs are stacked together to create a deep neural network. The AE
performs meaningful feature extraction and thus, used as a building block to
create a deep neural network [4].

###### What do they propose

In this section, we discuss the fundamentals of RVFL, ELM as a variant
of RVFL, Kernel ELM, autoencoder (AE) and denoising autoencoder (DAE).
To facilitate the understanding of how AEs (or DAEs) are used to build multilayer neural networks, we briefly review the concepts of Stacked AE (SAE) and
Stacked DAE (SDA). We also present a detailed review of ELM based multilayer neural networks.


##### Method

They dataset is composed with images and textual description in the form of natural language or a set of key words.
During the training, they transform images into unit vector by defining the mini-batch weakly

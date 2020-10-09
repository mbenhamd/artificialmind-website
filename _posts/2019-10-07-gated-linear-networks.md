---
layout: post
title: "Gated Linear Networks"
description: "This paper presents a family of backpropagation-free neural architectures."
date: 2019-10-07
feature_image: 
tags: [Backpropagation, Gated Linear Networks,  Probabilistic Models, Gated Geometric Mixture]
---

<img src="https://yt3.ggpht.com/a/AGF-l7-ncmSiLyMlXHexWBJfa61xH8Y02WWQbnI4rg=s900-c-k-c0xffffffff-no-rj-mo" alt="drawing" width="auto" max-width="100%" height="50%" />
<br>

*Presentation of a Paper avalaible : [here](https://arxiv.org/pdf/1910.01526.pdf)*

This paper presents a family of backpropagation-free neural architectures, Gated Linear Networks (GLNs), that are well suited to online learning applications where sample efficiency is of paramount importance. The impressive empirical performance of these architectures has long been known within the data compression community, but a theoretically satisfying explanation as to how and why they perform so well has proven difficult.
It's written by Joel Veness, Tor Lattimore, Avishkar Bhoopchand, David Budden, Christopher Mattern, Agnieszka Grabska-Barwinska, Peter Toth, Simon Schmitt and Marcus Hutter from DeepMind.
<!--more-->

##### Introduction
What distinguishes these architectures from other neural systems is the distributed and local nature of their credit assignment mechanism; each neuron directly predicts the target and has its own set of hard-gated weights that are locally adapted via online convex optimization. By providing an interpretation, generalization and subsequent theoretical analysis: They showed that sufficiently large GLNs
are universal in a strong sense. Empirically they showed a collection of single-pass learning results on established machine learning benchmarks that are competitive with results obtained with general-purpose batch learning techniques.

###### What do they propose ?

Deep metric learning algorithms fail to learn distances that capture fined-grained sub-categories. Such fine-grained visual similarity distances are essential to learn generalized visual features and to have a robust performance on cross-domain data. So they constructed an embedding of the product with text product production and use this to drive an adaptive triplet loss.

##### Method

The dataset is composed of images and textual description in the form of natural language or a set of keywords.
During the training, they transform images into a unit vector by defining the mini-batch weakly.

##### Discussion 

We have introduced a new family of general-purpose neural architectures, Gated Linear Networks, and studied the
desirable characteristics that follow from their use of data-dependent gating and local credit assignment. Their fast
online learning properties, easy interpretability, and excellent robustness to catastrophic forgetting in continual learning settings makes them an exciting and complementary
alternative to contemporary deep learning approaches.

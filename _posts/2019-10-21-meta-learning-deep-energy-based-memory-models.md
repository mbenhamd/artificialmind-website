---
layout: post
title: "Meta-Learning Deep Energy-Based Memory Models"
description: "They study the problem of learning associative memory -- a system which is able to retrieve a remembered pattern based on its distorted or incomplete version."
date: 2019-10-21
feature_image: https://yt3.ggpht.com/a/AGF-l7-ncmSiLyMlXHexWBJfa61xH8Y02WWQbnI4rg=s900-c-k-c0xffffffff-no-rj-mo
tags: [Energy-based Memory Models, Associative memory, Gradient-Based Meta-Learning]
---

*Presentation of a Paper avalaible [here](https://arxiv.org/pdf/1910.02720.pdf)*\:

We study the problem of learning associative memory – a system which is able to retrieve a remembered pattern based on its distorted or incomplete version. Attractor networks provide a sound model of associative memory: patterns are stored as attractors of the network dynamics and associative retrieval is performed by running the dynamics starting from a query pattern until it converges to an attractor. In such models the dynamics are often implemented as an optimization procedure that minimizes an energy function, such as in the classical Hopfield network. In general it is difficult to derive a writing rule for a given dynamics and energy that is both compressive and fast. Thus, most research in energybased memory has been limited either to tractable energy models not expressive enough to handle complex high-dimensional objects such as natural images, or to models that do not offer fast writing. We present a novel meta-learning approach to energy-based memory models (EBMM) that allows one to use an arbitrary neural architecture as an energy model and quickly store patterns in its weights. We demonstrate experimentally that our EBMM approach can build compressed memories for synthetic and natural data, and is capable of associative retrieval that outperforms existing memory systems in terms of the reconstruction error and compression rate.
<!--more-->

##### Introduction

Associative memory has long been of interest to neuroscience and machine learning communities (Willshaw et al., 1969; Hopfield, 1982; Kanerva, 1988). This interest has generated many proposals for associative memory models, both biological and synthetic. These models address the problem of storing a set of patterns in such a way that a stored pattern can be retrieved based on a partially known or distorted version. This kind of retrieval from memory is known as auto-association.

###### What do they propose

In this section we experimentally evaluate EBMM on a number of real-world image datasets.
The performance of EBMM is compared to a set of relevant baselines: Long-Short Term Memory (LSTM) (Hochreiter & Schmidhuber, 1997), the classical Hopfield network (Hopfield, 1982), Memory-Augmented Neural Networks (MANN) (Santoro et al., 2016) (which are a variant of the Differentiable Neural Computer (Graves et al., 2016)), Memory Networks (Weston et al., 2014), Differentiable Plasticity model of Miconi et al. (2018) (a generalization of the Fast-weights RNN (Ba et al., 2016)) and Dynamic Kanerva Machine (Wu et al., 2018). Some of these baselines failed to learn at all for real-world images. In the Appendix A.2 we provide additional experiments with random binary strings with a larger set of representative models. The experimental procedure is the following: we write a fixed-sized batch of images into a memory model, then corrupt a random block of the written image to form a query and let the model retrieve the originally stored image. By varying the memory size and repeating this procedure, we perform distortion/rate analysis, i.e. we measure how well a memory model can retrieve a remembered pattern for a given memory size.


##### Method

Deep neural networks are capable of both compression (Parkhi et al., 2015; Kraska et al., 2018),
and memorizing training patterns (Zhang et al., 2016). Taken together, these properties make
deep networks an attractive candidate for memory models, with both exact recall and compressive
capabilities. However, there exists a natural trade-off between the speed of writing and the realizable
capacity of a model (Ba et al., 2016). Approaches similar to ours in their use of gradient descent
dynamics, but lacking fast writing, have been proposed by Hinton et al. (2006a) and recently revisited
by Du & Mordatch (2019) together with another stochastic deep energy model (Krotov & Hopfield,
2016). In general it is difficult to derive a writing rule for a given dynamics equation or an energy
model which we attempt to address in this work.
We introduced a novel learning method for deep associative memory systems. Our method benefits
from the recent progress in deep learning so that we can use a very large class of neural networks both
8
Preprint
for learning representations and for storing patterns in network weights. At the same time, we are not
bound by slow gradient learning thanks to meta-learning of fast writing rules. We showed that our
method is applicable in a variety of domains from non-compressible (binary strings; see Appendix)
to highly compressible (natural images) and that the resulting memory system uses available capacity
efficiently. We believe that more elaborate architecture search could lead to stronger results on par
with state-of-the-art generative models.
The existing limitation of EBMM is the batch writing assumption, which is in principle possible to
relax. This would enable embedding of the model in reinforcement learning agents or into other tasks
requiring online-updating memory. It would be also interesting to explore a stochastic variant of
EBMM that could return different associations in the presence of uncertainty caused by compression.
Finally, many general principles of learning attractor models with desired properties are yet to be
discovered and we believe that our results provide a good motivation for this line of research.

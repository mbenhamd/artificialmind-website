---
layout: post
title: "[Paper Presentation] Improving the Gating Mechanism of Recurrent Neural Networks"
description: "Gating mechanisms are widely used in neural network models, where they allow gradients to backpropagate more easily through depth or time. However, their saturation property introduces problems of its own."
date: 2019-10-30
feature_image: https://miro.medium.com/max/1121/1*voNageVB1gI8Dfrmr-U3Ew.png
tags: [Recurrent Neural Networks, Associative memory, Gradient-Based Meta-Learning]
---

*Presentation of a Paper avalaible [here](https://arxiv.org/pdf/1910.09890.pdf)*\:

Gating mechanisms are widely used in neural
network models, where they allow gradients to
backpropagate more easily through depth or time.
However, their saturation property introduces
problems of its own. For example, in recurrent
models these gates need to have outputs near 1
to propagate information over long time-delays,
which requires them to operate in their saturation
regime and hinders gradient-based learning of
the gate mechanism. We address this problem by
deriving two synergistic modifications to the standard gating mechanism that are easy to implement,
introduce no additional hyperparameters, and
improve learnability of the gates when they are
close to saturation. We show how these changes
are related to and improve on alternative recently
proposed gating mechanisms such as chrono
initialization and Ordered Neurons. Empirically,
our simple gating mechanisms robustly improve
the performance of recurrent models on a range
of applications, including synthetic memorization
tasks, sequential image classification, language
modeling, and reinforcement learning, particularly
when long-term dependencies are involved.
<!--more-->

##### Introduction
Recurrent neural networks (RNNs) are an established
machine learning tool for learning from sequential data.
However, RNNs are prone to the vanishing gradient problem,
which occurs when the gradients of the recurrent weights become vanishingly small as they get backpropagated through
time (Hochreiter, 1991; Bengio et al., 1994; Hochreiter
et al., 2001). A common approach to alleviate the vanishing
gradient problem is to use gating mechanisms, leading to
models such as the long short term memory (Hochreiter
& Schmidhuber, 1997, LSTM) and gated recurrent units
1
Stanford University, USA 2DeepMind, London, UK. Correspondence to: Albert Gu <albertgu@stanford.edu>, Caglar Gulcehre <caglarg@google.com>.
Proceedings of the 37 th International Conference on Machine
Learning, Vienna, Austria, PMLR 108, 2020. Copyright 2020 by
the author(s).
(Chung et al., 2014, GRUs). These gated RNNs have been
very successful in several different application areas such
as in reinforcement learning (Kapturowski et al., 2018;
Espeholt et al., 2018) and natural language processing
(Bahdanau et al., 2014; Kocisk ˇ y et al. ` , 2018).
###### What do they propose

The URLSTM requires two small modifications to the
vanilla LSTM. First, we present the way the biases of forget
gates are initialized in Equation (12) with UGI. Second,
the modifications on the standard LSTM equations to
compute the refine and effective forget gates are presented
in Equations (9)-(11). However, we note that these methods
can be used to modify any gate (or more generally, bounded
function) in any model. In this context, the URLSTM is
simply defined by applying UGI and a refine gate r on the
original forget gate f to create an effective forget gate g
(Equation (10)). This effective gate is then used in the cell
state update (11). Empirically, these small modifications
to an LSTM are enough to allow it to achieve nearly binary
activations and solve difficult memory problems (Figure 5).


##### Method

We first perform full ablations of the gating variants (Section 4.1) on two common benchmarks for testing memory
models: synthetic memory tasks and pixel-by-pixel image
classification tasks. We then evaluate our main method
on important applications for recurrent models including
language modeling and reinforcement learning, comparing
against baselines from literature where appropriate.
The main claims we evaluate for each gating component
are (i) the refine gate is more effective than alternatives
(the master gate, or no auxiliary gate), and (ii) UGI is more
effective than standard initialization for sigmoid gates. In
particular, we expect the *R gate to be more effective than
*M or *- for any primary gate *, and we expect U* to be
better than -* and comparable to O* for any auxiliary gate *.



##### Result
In this work, we introduce and evaluate several modifications
to the ubiquitous gating mechanism that appears in recurrent
neural networks. We describe methods that improve
on the standard gating method by alleviating problems
with initialization and optimization. The mechanisms
considered include changes on independent axes, namely
initialization/activations and auxiliary gates, and we perform
extensive ablations on our improvements with previously
considered modifications. Our main gate model robustly
improves on standard gates across many different tasks and
recurrent cores, while requiring less tuning. Finally, we
emphasize that these improvements are entirely independent
of the large body of research on neural network architectures
that use gates, and hope that these insights can be applied
to improve machine learning models at large.
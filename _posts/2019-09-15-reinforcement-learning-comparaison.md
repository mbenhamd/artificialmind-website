---
layout: post
title: "Reinforcement Learning Algorithms Comparaison"
description: "Implementation of different learning algorithms by reinforcement"
date: 2019-09-15
feature_image : https://softwareengineeringdaily.com/wp-content/uploads/2018/06/OpenAI.png
tags: [Reinforcement Learning, Q-Learning, TD-Learning, Double Q-learning, Keras, Open IA Gym]
---

*Presentation of a comparison of different reinforcement learning algorithms available on my [Github repository](https://github.com/mbenhamd/reinforcement-learning-benchs)*:

Reinforcement Learning (RA) is about learning what to do, how to relate actions to situations, and how to maximize a reward. The learner is not told what action to take, but instead he must find out which actions give the most reward by trying them. In the most interesting case, actions can affect not only the immediate rewards but also the next situation, and hence the longer term rewards. These two properties - trial-and-error and long-term reward - are the two most important features of reinforcement learning.

<!--more-->

# Agent Oriented Learning
### Mini-project: Comparison of different reinforcement learning algorithms.

We will use the library **Open IA Gym** including many games so we can then develop an AI able to learn to maximize its score.

The game we will use is "N-chain".

This game presents movements along a linear chain of states, with two actions:
forward, which moves along the chain but gives no reward back, which returns to the
start and has a small reward.
The end of the chain, however, offers a great reward, and moving forward to the end of the chain, this important reward can be repeated.

At each action, there is a low probability that the agent "slips" and the opposite transition is taken instead.

The observed state is the current state in the chain (0 to n-1).

The game was designed and used by Malcolm J. A. Strens: [A Bayesian Framework
for Reinforcement Learning](http://ceit.aut.ac.ir/~shiry/lecture/machine-
learning/papers/BRL-2000.pdf)
---
layout: post
title: "DeepLine: AutoML Tool for Pipelines Generation using Deep Reinforcement
Learning and Hierarchical Actions Filtering"
date: 2019-11-13
feature_image: 
tags: [DeepLine, Associative memory, Gradient-Based Meta-Learning, Deep Reinforcement Learning]
---

<img src="https://yt3.ggpht.com/a/AGF-l7-ncmSiLyMlXHexWBJfa61xH8Y02WWQbnI4rg=s900-c-k-c0xffffffff-no-rj-mo" alt="drawing" width="auto" max-width="100%" height="50%" />
<br>





*Presentation of the paper available [here](https://arxiv.org/pdf/1911.00061.pdf)*\:

Automatic machine learning (AutoML) is an area of research
aimed at automating machine learning (ML) activities that
currently require human experts. One of the most challenging tasks in this field is the automatic generation of end-toend ML pipelines: combining multiple types of ML algorithms into a single architecture used for end-to-end analysis of previously-unseen data. This task has two challenging aspects: the first is the need to explore a large search space
of algorithms and pipeline architectures. The second challenge is the computational cost of training and evaluating
multiple pipelines. In this study we present DeepLine, a reinforcement learning based approach for automatic pipeline
generation. Our proposed approach utilizes an efficient representation of the search space and leverages past knowledge gained from previously-analyzed datasets to make the
problem more tractable. Additionally, we propose a novel
hierarchical-actions algorithm that serves as a plugin, mediating the environment-agent interaction in deep reinforcement learning problems. The plugin significantly speeds up
the training process of our model. Evaluation on 56 datasets
shows that DeepLine outperforms state-of-the-art approaches
both in accuracy and in computational cost

<!--more-->

##### Introduction
Applying AutoML for end-to-end pipeline generation has
been an active field of research in recent years. Various studies offer a large variety of approaches to address this challenge, including Bayesian optimization (Hutter, Hoos, and
Leyton-Brown 2011) and genetic programming (Olson and
Moore 2016). One popular example is Auto-Weka (Thornton et al. 2013), which automatically selects an algorithm
for each step of a pipeline with a fixed structure and then
uses Bayesian optimization (Sequential model-based optimization) to search for optimal hyperparameter settings of
the pipeline.
###### What do they propose

We implement our agent using the DQN algorithm, which is
an off-policy algorithm. While on-policy algorithms such as
policy gradients are generally more stable, they are also less
sample-efficient and prone to converge to a local optimum.
Moreover, while on-policy approaches generally outperform
off-policy approaches in large action spaces, our hierarchical
representation of actions makes this point irrelevant.
A recent improvement to the DQN algorithm is duelingDQN (D-DQN) (Wang et al. 2015). D-DQN achieves faster
convergence by decoupling the Q-function to the value function of the state and the advantage function of the actions,
thus enabling the DQN agent to learn the value function
V (s), separately from the actions.
The D-DQN architecture consists of two separate subarchitectures – one for the value function and one for the
advantage of each action over the average – each with its
own output layer. Both sub-architectures are fed to a global
output layer which computes the combined loss.
Our implementation is a variation of the D-DQN, which
makes use of the fact that our state representation consists of
multiple components. Our dueling architecture is presented
in Figure 3. We partition the state vector as follows: the vectors that model the state of the grid form the input to the
value-function sub-architecture. 

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
Open-ended learning systems that utilise learning-based agents and self-play have achieved impressive results in increasingly challenging domains. Thanks to advances in imitation learning, reinforcement learning, and the League, we were able to train AlphaStar Final, an agent that reached Grandmaster level at the full game of StarCraft II without any modifications, as shown in the above video. This agent played online anonymously, using the gaming platform Battle.net, and achieved a Grandmaster level using all three StarCraft II races. AlphaStar played using a camera interface, with similar information to what human players would have, and with restrictions on its action rate to make it comparable with human players. The interface and restrictions were approved by a professional player. Ultimately, these results provide strong evidence that general-purpose learning techniques can scale AI systems to work in complex, dynamic environments involving multiple actors. The techniques we used to develop AlphaStar will help further the safety and robustness of AI systems in general, and, we hope, may serve to advance our research in real-world domains.

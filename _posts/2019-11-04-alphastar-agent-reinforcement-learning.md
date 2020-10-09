---
layout: post
title: "AlphaStar: Grandmaster level in StarCraft II using multi-agent reinforcement learning"
date: 2019-11-04
feature_image: 
tags: [Reiforcement learning, Imitation learning, AlphaStar, Multi Agent System]
---

<img src="https://yt3.ggpht.com/a/AGF-l7-ncmSiLyMlXHexWBJfa61xH8Y02WWQbnI4rg=s900-c-k-c0xffffffff-no-rj-mo" alt="drawing" width="auto" max-width="100%" height="50%" />
<br>


*Presentation of a Paper avalaible [here](https://www.nature.com/articles/s41586-019-1724-z.epdf?author_access_token=lZH3nqPYtWJXfDA10W0CNNRgN0jAjWel9jnR3ZoTv0PSZcPzJFGNAZhOlk4deBCKzKm70KfinloafEF1bCCXL6IIHHgKaDkaTkBcTEv7aT-wqDoG1VeO9-wO3GEoAMF9bAOt7mJ0RWQnRVMbyfgH9A%3D%3D)*\:

Many real-world applications require artificial agents to compete and coordinate with other agents in complex environments. As a stepping stone to this goal, the domain of StarCraft has emerged as an important challenge for artificial intelligence research, owing to its iconic and enduring status among the most difficult professional esports and its relevance to the real world in terms of its raw complexity and multi-agent challenges. Over the course of a decade and numerous competitions1,2,3, the strongest agents have simplified important aspects of the game, utilized superhuman capabilities, or employed hand-crafted sub-systems4. Despite these advantages, no previous agent has come close to matching the overall skill of top StarCraft players. We chose to address the challenge of StarCraft using general-purpose learning methods that are in principle applicable to other complex domains: a multi-agent reinforcement learning algorithm that uses data from both human and agent games within a diverse league of continually adapting strategies and counter-strategies, each represented by deep neural networks5,6. We evaluated our agent, AlphaStar, in the full game of StarCraft II, through a series of online games against human players. AlphaStar was rated at Grandmaster level for all three StarCraft races and above 99.8% of officially ranked human players.
<!--more-->

##### Introduction
We chose to use general-purpose machine learning techniques – including neural networks, self-play via reinforcement learning, multi-agent learning, and imitation learning – to learn directly from game data with general purpose techniques. Using the advances described in our Nature paper, AlphaStar was ranked above 99.8% of active players on Battle.net, and achieved a Grandmaster level for all three StarCraft II races: Protoss, Terran, and Zerg. We expect these methods could be applied to many other domains.
###### What do they propose

Learning-based systems and self-play are elegant research concepts which have facilitated remarkable advances in artificial intelligence. In 1992, researchers at IBM developed TD-Gammon, combining a learning-based system with a neural network to play the game of backgammon. Instead of playing according to hard-coded rules or heuristics, TD-Gammon was designed to use reinforcement learning to figure out, through trial-and-error, how to play the game in a way that maximises its probability of winning. Its developers used the notion of self-play to make the system more robust: by playing against versions of itself, the system grew increasingly proficient at the game. When combined, the notions of learning-based systems and self-play provide a powerful paradigm of open-ended learning.

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
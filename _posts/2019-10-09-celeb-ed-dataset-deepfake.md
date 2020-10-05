---
layout: post
title: "Celeb-DF: A New Dataset for DeepFake Forensics"
description: " In this work, they present a new DeepFake dataset, Celeb-DF, for the development and evaluation of DeepFake detection algorithms."
date: 2019-10-09
feature_image: 
tags: [Celeb-DF, Computer Vision,  DeepFake, Algorithms]
---

<img src="https://i.kinja-img.com/gawker-media/image/upload/c_scale,fl_progressive,q_80,w_800/rdvjaoctz3zp9cv9nbim.jpg" alt="drawing" width="auto" max-width="100%" height="50%" />
<br>

*Presentation of a Paper avalaible : [here](https://arxiv.org/pdf/1909.12962.pdf)*\

AI-synthesized face-swapping videos, commonly known as DeepFakes, is an emerging problem threatening the trustworthiness of online information. The need to develop and evaluate DeepFake detection algorithms calls for large-scale datasets. However, current DeepFake datasets
suffer from low visual quality and do not resemble DeepFake videos circulated on the Internet. We present a new large-scale challenging DeepFake video dataset, CelebDF, which contains 5, 639 high-quality DeepFake videos of celebrities generated using improved synthesis process. We
conduct a comprehensive evaluation of DeepFake detection methods and datasets to demonstrate the escalated level of challenges posed by Celeb-DF.
<!--more-->

##### Introduction
In this work, we present a new large-scale and challenging DeepFake video dataset, Celeb-DF3
, for the development and evaluation of DeepFake detection algorithms.
There are in total 5, 639 DeepFake videos, corresponding more than 2 million frames, in the Celeb-DF dataset.
The real source videos are based on publicly available
YouTube video clips of 59 celebrities of diverse genders,
ages, and ethic groups. The DeepFake videos are generated
using an improved DeepFake synthesis method. As a result, the overall visual quality of the synthesized DeepFake
videos in Celeb-DF is greatly improved when compared to
existing datasets, with significantly fewer notable visual artifacts, see Fig.2. Based on the Celeb-DF dataset and other
existing datasets, we conduct an evaluation of current DeepFake detection methods.

###### What do they propose

The DeepFake videos in Celeb-DF are generated using an improved DeepFake synthesis algorithm, which is key to the improved visual quality as shown in Fig.2. Specifically, the basic DeepFake maker algorithm is refined in several aspects targeting the following specific visual artifacts observed in existing datasets.

##### Method

They dataset is composed with images and textual description in the form of natural language or a set of key words.
During the training, they transform images into unit vector by defining the mini-batch weakly


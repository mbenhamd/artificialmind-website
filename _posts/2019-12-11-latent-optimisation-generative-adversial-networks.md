---
layout: post
title: "LOGAN: Latent Optimisation for Generative Adversarial Networks"
date: 2019-12-11
feature_image: 
tags: [CS-GAN, GAN, LOGAN]
---
<img src="https://yt3.ggpht.com/a/AGF-l7-ncmSiLyMlXHexWBJfa61xH8Y02WWQbnI4rg=s900-c-k-c0xffffffff-no-rj-mo" alt="drawing" width="auto" max-width="100%" height="auto"/>
<br>

*Presentation of the paper available [here](https://arxiv.org/pdf/1912.00953.pdf)*\:

Training generative adversarial networks demand to match of dainty competitive dynamics. Yet by precise tuning, training may differ or end up in poor stability with dropped modes. In this work, they improved CS-GAN with natural gradient-based latent optimisation and confirm that it increases adversarial dynamics by intensifying interactions between the discriminator and the generator. Their experiments demonstrate that latent optimisation can significantly enhance GAN training, achieving state-of-the-art achievement for the ImageNet (128 × 128) dataset. Their model achieves an Inception Score (IS) of 148 and an Fréchet Inception Distance (FID) of 3.4, an enhancement of 17% and 32% in IS and FID individually, confronted with the baseline BigGAN-deep model with the same architecture and number of parameters.

<!--more-->

##### Introduction

Generative Adversarial Nets (GANs) are inherent generative models that can be trained to satisfy a provided data distribution. GANs was basically stated by Goodfellow et al. (2014) for image data.
As the field of generative modelling has progressed, GANs rest at the edge, generating high fidelity images at massive scale. Nonetheless, despite increasing insights within the dynamics of GAN training, much of the progress in GAN-based image generation happens from network architecture improvements or regularisation of distinct parts of the model.

###### What do they propose

They used standard BigGAN-deep architecture with three minor alterations: 
1. They extended the size of the latent source from 128 to 256, to compensate the randomness of the source lost when optimising the latent variable. 
2. They used the uniform distribution U(−1, 1) rather than the standard average distribution N(0, 1) for p(z) to be consistent with the clipping operation. 
3. They used leaky ReLU (with the slope of 0.2 for the negative part) instead of ReLU as the non-linearity for smoother gradient flow consistent with the detailed findings in this paper, their experiment with this baseline model obtains only slightly better scores compared with those here: 

They computed the FID and IS as in this paper, and calculated IS values from checkpoints with the lowest FIDs. 

Finally, they calculated the means and standard deviations for both measures from 5 models with different random seeds.
To apply latent optimisation with NGD, they used the same large step size of α = 0.9 as in SN-GAN. However, we found much heavier damping is essential for BigGAN, so we use the damping factor β = 5.0, and only optimise 50% of z’s elements. 


##### Contribution



##### Conclusion
To review their enrichment: 
1. They propose an advanced, effective approach to latent optimisation using natural gradient descent. 
2. Their algorithm increases the state-of-the-art BigGAN by a significant margin, without introducing any architectural change, resulting in more astonishing quality images and more different representations. 
3. To provide theoretical insight, they analysed latent optimisation in GANs from the view of differentiable games. They argue that latent optimisation can be viewed as improving the dynamics of adversarial training.


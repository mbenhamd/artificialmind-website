---
layout: post
title: "LOGAN: Latent Optimisation for Generative Adversarial Networks"
date: 2019-12-11
feature_image: https://yt3.ggpht.com/a/AGF-l7-ncmSiLyMlXHexWBJfa61xH8Y02WWQbnI4rg=s900-c-k-c0xffffffff-no-rj-mo
tags: [Reiforcement learning, Associative memory, Gradient-Based Meta-Learning]
---

*Presentation of a Paper avalaible [here](https://arxiv.org/pdf/1912.00953.pdf)*\:

Training generative adversarial networks requires balancing of delicate adversarial dynamics. Even with careful tuning, training may diverge or end up in a bad
equilibrium with dropped modes. In this work, we improve CS-GAN with natural
gradient-based latent optimisation and show that it improves adversarial dynamics
by enhancing interactions between the discriminator and the generator. Our experiments demonstrate that latent optimisation can significantly improve GAN training, obtaining state-of-the-art performance for the ImageNet (128 × 128) dataset.
Our model achieves an Inception Score (IS) of 148 and an Frechet Inception Dis- ´
tance (FID) of 3.4, an improvement of 17% and 32% in IS and FID respectively,
compared with the baseline BigGAN-deep model with the same architecture and
number of parameters.
<!--more-->

##### Introduction

Generative Adversarial Nets (GANs) are implicit generative models that can be trained to match a
given data distribution. GANs were originally developed by Goodfellow et al. (2014) for image data.
As the field of generative modelling has advanced, GANs remain at the frontier, generating highfidelity images at large scale (Brock et al., 2018; Karras et al., 2019). However, despite growing
insights into the dynamics of GAN training, much of the progress in GAN-based image generation come from network architecture improvements (Radford et al., 2015; Zhang et al., 2019), or
regularisation of particular parts of the model (Miyato et al., 2018; Miyato & Koyama, 2018)

###### What do they propose

We used the standard BigGAN-deep architecture with three minor modifications: 1. We increased
the size of the latent source from 128 to 256, to compensate the randomness of the source lost
when optimising z. 2. We use the uniform distribution U(−1, 1) instead of the standard normal
distribution N (0, 1) for p(z) to be consistent with the clipping operation (Algorithm 1). 3. We use
leaky ReLU (with the slope of 0.2 for the negative part) instead of ReLU as the non-linearity for
smoother gradient flow for ∂f(z)
∂z .
Consistent with the detailed findings in Brock et al. (2018), our experiment with this baseline model
obtains only slightly better scores compared with those in Brock et al. (2018) (Table 1, see also
Figure 12 in Appendix G). We computed the FID and IS as in Brock et al. (2018), and computed
IS values from checkpoints with the lowest FIDs. Finally, we computed the means and standard
deviations for both measures from 5 models with different random seeds.
To apply latent optimisation with NGD, we use the same large step size of α = 0.9 as in SN-GAN
(section 5.1). However, we found much heavier damping is essential for BigGAN, so we use the
damping factor β = 5.0, and only optimise 50% of z’s elements. Consistent with Tanaka (2019), we
found a much larger weight of 300.0 for the regulariser Rz (eq. 17) works best, since deeper models
generally have larger Lipschitz constants. All other hyper-parameters, including learning rates and a
large batch size of 2048, remain the same as in BigGAN-deep. We call this model LOGAN (NGD)

##### Method

In this work, we present LOGAN, which significantly improves the state of the art in large scale
GAN training for image generation by optimising the latent source z. Our results illustrate improvements in quantitative evaluation and samples with higher quality and diversity. Moreover, our
analysis suggests that LOGAN fundamentally improves adversarial training dynamics. LOGAN is
related to the energy-based formulation of a GAN’s discriminator (Dai et al., 2017; Kumar et al.,
2019; Du & Mordatch, 2019), when latent optimisation is viewed as descending the energy function
defined by the discriminator. From this view, sampling from the distribution implicitly defined by
this energy function, via, e.g., Langevin sampling (Welling & Teh, 2011), may bring further benefits. Another class of approaches regularises the entropy of the generator outputs to reduce mode
collapse (Belghazi et al., 2018; Dieng et al., 2019). Such techniques could be combined with LOGAN to further improve coverage of the underlying data distribution. Moreover, we expect our
method to be useful in other tasks that involve adversarial training, including representation learning
and inference (Donahue et al., 2017; Dumoulin et al., 2017; Donahue & Simonyan, 2019), text generation (Zhang et al., 2019), style learning (Zhu et al., 2017; Karras et al., 2019), audio generation
(Donahue et al., 2018) and video generation (Vondrick et al., 2016; Clark et al., 2019).



##### Result

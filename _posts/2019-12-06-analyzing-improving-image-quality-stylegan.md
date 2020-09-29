---
layout: post
title: "Analyzing and Improving the Image Quality of StyleGAN"
date: 2019-11-04
feature_image: https://miro.medium.com/max/1174/1*LgSQi3MLNE1l-T4vmjmybg.png
tags: [Reiforcement learning, Associative memory, Gradient-Based Meta-Learning]
---

*Presentation of a Paper avalaible [here](https://arxiv.org/pdf/1912.04958.pdf)*\:

The style-based GAN architecture (StyleGAN) yields
state-of-the-art results in data-driven unconditional generative image modeling. We expose and analyze several of
its characteristic artifacts, and propose changes in both
model architecture and training methods to address them.
In particular, we redesign the generator normalization, revisit progressive growing, and regularize the generator to
encourage good conditioning in the mapping from latent
codes to images. In addition to improving image quality,
this path length regularizer yields the additional benefit that
the generator becomes significantly easier to invert. This
makes it possible to reliably attribute a generated image to
a particular network. We furthermore visualize how well
the generator utilizes its output resolution, and identify a
capacity problem, motivating us to train larger models for
additional quality improvements. Overall, our improved
model redefines the state of the art in unconditional image
modeling, both in terms of existing distribution quality metrics as well as perceived image quality.
<!--more-->

##### Introduction
The resolution and quality of images produced by generative methods, especially generative adversarial networks
(GAN) [16], are improving rapidly [23, 31, 5]. The current
state-of-the-art method for high-resolution image synthesis
is StyleGAN [24], which has been shown to work reliably
on a variety of datasets. Our work focuses on fixing its characteristic artifacts and improving the result quality further.
The distinguishing feature of StyleGAN [24] is its unconventional generator architecture. Instead of feeding the
input latent code z ∈ Z only to the beginning of a the network, the mapping network f first transforms it to an intermediate latent code w ∈ W. Affine transforms then produce styles that control the layers of the synthesis network g
via adaptive instance normalization (AdaIN) [21, 9, 13, 8].
Additionally, stochastic variation is facilitated by providing
additional random noise maps to the synthesis network. It
has been demonstrated [24, 38] that this design allows the
intermediate latent space W to be much less entangled than
the input latent space Z. In this paper, we focus all analysis solely on W, as it is the relevant latent space from the
synthesis network’s point of view.
###### What do they propose

While StyleGAN uses simple feedforward designs in the
generator (synthesis network) and discriminator, there is a
vast body of work dedicated to the study of better network
architectures. Skip connections [34, 22], residual networks
[18, 17, 31], and hierarchical methods [7, 47, 48] have
proven highly successful also in the context of generative
methods. As such, we decided to re-evaluate the network
design of StyleGAN and search for an architecture that produces high-quality images without progressive growing.
Figure 7a shows MSG-GAN [22], which connects the
matching resolutions of the generator and discriminator using multiple skip connections. The MSG-GAN generator
is modified to output a mipmap [42] instead of an image,
and a similar representation is computed for each real image as well. In Figure 7b we simplify this design by upsampling and summing the contributions of RGB outputs
corresponding to different resolutions. In the discriminator,
we similarly provide the downsampled image to each resolution block of the discriminator. We use bilinear filtering in
all up and downsampling operations. In Figure 7c we further modify the design to use residual connections.3 This
design is similar to LAPGAN [7] without the per-resolution
discriminators employed by Denton et al.

##### Method

One of the main strengths of StyleGAN is the ability to
control the generated images via style mixing, i.e., by feeding a different latent w to different layers at inference time.
In practice, style modulation may amplify certain feature
maps by an order of magnitude or more. For style mixing to
work, we must explicitly counteract this amplification on a
per-sample basis — otherwise the subsequent layers would
not be able to operate on the data in a meaningful way.
If we were willing to sacrifice scale-specific controls (see
video), we could simply remove the normalization, thus removing the artifacts and also improving FID slightly [27].
We will now propose a better alternative that removes the
artifacts while retaining full controllability. The main idea
is to base normalization on the expected statistics of the incoming feature maps, but without explicit forcing.


##### Result
We have identified and fixed several image quality issues in StyleGAN, improving the quality further and considerably advancing the state of the art in several datasets.
In some cases the improvements are more clearly seen in
motion, as demonstrated in the accompanying video. Appendix A includes further examples of results obtainable using our method. Despite the improved quality, StyleGAN2
makes it easier to attribute a generated image to its source.
Training performance has also improved. At 10242
resolution, the original StyleGAN (config A in Table 1)
trains at 37 images per second on NVIDIA DGX-1 with
8 Tesla V100 GPUs, while our config E trains 40% faster
at 61 img/s. Most of the speedup comes from simplified
dataflow due to weight demodulation, lazy regularization,
and code optimizations. StyleGAN2 (config F, larger networks) trains at 31 img/s, and is thus only slightly more
expensive to train than original StyleGAN. Its total training
time was 9 days for FFHQ and 13 days for LSUN CAR.
The entire project, including all exploration, consumed
132 MWh of electricity, of which 0.68 MWh went into
training the final FFHQ model. In total, we used about
51 single-GPU years of computation (Volta class GPU). A
more detailed discussion is available in Appendix F.
In the future, it could be fruitful to study further improvements to the path length regularization, e.g., by replacing
the pixel-space L2 distance with a data-driven feature-space
metric. Considering the practical deployment of GANs, we
feel that it will be important to find new ways to reduce the
training data requirements. This is especially crucial in applications where it is infeasible to acquire tens of thousands
of training samples, and with datasets that include a lot of
intrinsic variation.
---
layout: post
title: "DeepFovea: Using deep learning for foveated reconstruction in AR-VR"
date: 2019-11-04
feature_image: https://yt3.ggpht.com/a/AGF-l7-ncmSiLyMlXHexWBJfa61xH8Y02WWQbnI4rg=s900-c-k-c0xffffffff-no-rj-mo
tags: [Reiforcement learning, Associative memory, Gradient-Based Meta-Learning]
---

*Presentation of a Paper avalaible [here](https://research.fb.com/wp-content/uploads/2019/11/DeepFovea-Neural-Reconstruction-for-Foveated-Rendering-and-Video-Compression-using-Learned-Statistics-of-Natural-Videos.pdf)*\:

DeepFovea is a new AI-powered 
foveated rendering
 system for augmented and virtual reality displays. It renders images using an order of magnitude fewer pixels than previous systems, producing a full-quality experience that is realistic and 
gaze-contingent
.

This is the first practical generative adversarial network (GAN) that is able to generate a natural-looking video sequence conditioned on a very sparse input. In our tests, DeepFovea can decrease the amount of compute resources needed for rendering by as much as 10-14x while any image differences remain imperceptible to the human eye.


<!--more-->

##### Introduction
When the human eye looks directly at an object, it sees it in great detail. Peripheral vision, on the other hand, is much lower quality, but because the brain infers the missing information, humans don’t notice. DeepFovea uses recent advances in 
generative adversarial networks
 (GANs) that can similarly “in-hallucinate” missing peripheral details by generating content that is perceptually consistent. The system is trained by feeding a large number of video sequences with decreased pixel density as input. The input simulates the peripheral image degradation, and the target helps the network learn how to fill in the missing details based on statistics from all the videos it has seen. The result is a natural-looking video generated out of a stream of sparse pixels that has been decreased in density by as much as 99 percent along the periphery of a 60x40 degree field of view. The system also manages the level of flicker, aliasing, and other video artifacts in the periphery to be below the threshold that can be detected by the human eye. (A sample video is available here.)
###### What do they propose

There are several goals that we would like to achieve with our
method. First, the DeepFovea network should be able to operate
in an online mode, i.e., it should be able to reconstruct the current
frame based only on the past frames. Second, since we are targeting
gaze-contingent display systems, the network should be able to
operate in real time. This prohibits using complicated models or any
significant number of past or future frames.
There are also strict requirements for output quality. The human
visual system is not sensitive to high-frequency details in the periphery, however, motion and flicker are easily detectable. Therefore,
while the peripheral reconstruction can omit fine details, it should
not introduce significant noise to achieve plausible results with high
compression. Given the uncertainty of the sparse video input, the
network needs to balance between introducing the new content
timely and suppressing flicker due to the inbound noise.

##### Method

For the reconstruction network G of our system (Figure 3), we
chose the U-Net encoder-decoder design with skip connections [Ronneberger et al. 2015]. It transforms an image into a hierarchy and
skip connections allow to bypass high frequencies and improve the
gradient flow during training.
Each decoder block does the reverse of an encoder block, performs
a spatial bilinear upsampling, while decreasing the feature count
correspondingly to the symmetric encoder block. The input to a
decoder block is the upscaled output of the previous decoder block
concatenated with the output of the corresponding encoder block
(skip connection, dashed arrows in Figure 3).
We use ELU activation function [Clevert et al. 2016] in all networks and layers (including recurrent and discriminator layers) to
accelerate the training.



##### Result

We presented a neural reconstruction method for foveated rendering and video compression. We show that it is possible to leverage
the spatiotemporal statistics of natural videos to achieve an efficient
video reconstruction in the periphery. Our method demonstrates
temporally stable reconstruction from a noisy input and sets a new
bar of 14x compression rate in savings achievable for foveated rendering with no significant degradation in perceived quality. Because
the method requires only color information as an input, it is also
suitable for foveated compression of video content. We open our
method for follow-up research on foveated reconstruction
---
title: "Are Vision Foundation Models Foundational for Electron Microscopy Image Segmentation?"
collection: publications
category: "Conference Proceedings"
permalink: /publication/2026-vfms-electron-microscopy
excerpt: "Accepted at the Learning Meaningful Representations of Life (LMRL) Workshop at ICLR 2026."
date: 2026-02-09
venue: "Learning Meaningful Representations of Life (LMRL) Workshop at ICLR 2026"
paperurl: "https://openreview.net/forum?id=BbaIt2S2mU&noteId=BbaIt2S2mU"
citation: "Caterina Fuster-Barceló, Virginie Uhlmann. \"Are Vision Foundation Models Foundational for Electron Microscopy Image Segmentation?\" Learning Meaningful Representations of Life (LMRL) Workshop at ICLR 2026, 2026."
---

## Are Vision Foundation Models Foundational for Electron Microscopy Image Segmentation?

**Accepted at**: [Learning Meaningful Representations of Life (LMRL) Workshop at ICLR 2026](https://lmrl.org/)  
**Final version**: [OpenReview](https://openreview.net/forum?id=BbaIt2S2mU&noteId=BbaIt2S2mU)  
**Preprint**: [arXiv](https://arxiv.org/abs/2602.08505)  
**Authors**: Caterina Fuster-Barceló, Virginie Uhlmann  

### Abstract

This paper studies whether vision foundation models provide latent representations that are general enough to support effective transfer across heterogeneous electron microscopy datasets for mitochondria segmentation.

Using the Lucchi++ and VNC datasets together with DINOv2, DINOv3, and OpenCLIP, the work evaluates both frozen-backbone adaptation and parameter-efficient fine-tuning via LoRA.

Across models, training on a single EM dataset produced good segmentation performance and LoRA consistently improved in-domain results. In contrast, training jointly on multiple EM datasets led to severe degradation, with only marginal gains from parameter-efficient fine-tuning.

Analysis of the latent representation space revealed a persistent domain mismatch between the two datasets despite their visual similarity, suggesting that current PEFT strategies are insufficient to obtain a single robust model across heterogeneous EM domains without additional domain-alignment mechanisms.

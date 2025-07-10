---
title: "Automated Classification and Localization of Inner Ear Structures in MRI Using Deep Learning"
collection: teaching
type: "Master Thesis"
permalink: /teaching/2025-mt-claudia-fuster-inner-ear-classification
venue: "Universidad Carlos III de Madrid, Master in Machine Learning for Health"
date: 2025-06-27
location: "Madrid, Spain"
---

## Automated Classification and Localization of Inner Ear Structures in MRI Using Deep Learning

🎓 **Program**: Master in Machine Learning for Health  
🏫 **Institution**: Universidad Carlos III de Madrid  
🤝 **In collaboration with**: Clínica Universidad de Navarra  
👩‍🎓 **Student**: Claudia Castrillón Álvarez  
📆 **Academic Year**: 2024/2025  
📝 **Grade**: 9.5 / 10  
🔗 **Related thesis**: [Laura Rodrigo Muñoz – Segmentation of Inner Ear Structures](./2025-mt-laura-rodrigo-inner-ear-segmentation)

---

This Master Thesis represents the first stage in a comprehensive pipeline for the automatic diagnosis of **Ménière’s Disease** from MRI. The focus was on the **automated classification and localization** of inner ear structures using two high-resolution imaging modalities: 3D-SPACE-MRC and 3D-REAL-IR MRI.

The system included:
- A custom Convolutional Neural Network to classify relevant MRI slices containing ear structures
- A YOLO-based object detection model to localize cochlear and vestibular regions

### 🧪 Highlights
- Classification model achieved 97.74% accuracy with low validation loss  
- Object detector delivered strong performance in mAP@0.5 and mAP@[0.5:0.95]  
- Dataset: MRI volumes from 90 patients, labeled in collaboration with radiologists  
- The pipeline is designed for clinical integration into Siemens MRI systems

This work laid the foundation for the segmentation and volumetric analysis carried out in the paired thesis project.

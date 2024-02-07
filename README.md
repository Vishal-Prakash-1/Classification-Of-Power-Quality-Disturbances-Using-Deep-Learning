# Power Quality Disturbance Classification Using Deep Learning

This repository presents a comprehensive project aimed at classifying nine types of power quality disturbances within electrical signals. Power quality disturbances can significantly impact electrical equipment's performance and longevity, making their accurate detection and classification vital for maintenance and monitoring systems.

### Project Overview

The project encompasses the development and deployment of Machine Learning (ML) models, specifically Convolutional Neural Networks (CNN), to classify various types of power quality disturbances. These disturbances include voltage sags, swells, harmonics, flickers, and more, which are common in power systems and can lead to inefficient operation and damage to electrical devices.

### Data Preparation and Preprocessing

A crucial step in our methodology was generating the S-transforms of 200 signals for each type of disturbance, creating a robust dataset for model training. The S-transform combines elements of Fourier transforms and wavelets, providing a powerful tool for analyzing time-varying signals. This process allowed us to capture both time-domain and frequency-domain characteristics of the disturbances, essential for the effective training of our models.

### Model Training and Evaluation

We employed SVM and CNN models to tackle the classification problem. While SVMs provided a solid baseline, leveraging both time-domain and frequency-domain inputs, our CNN model, designed and optimized for spatial recognition of patterns within the signals, achieved exceptional results.

The CNN model detected and classified disturbances in the signal with an impressive accuracy of 99.57%. This high level of accuracy demonstrates the CNN model's capability to capture the complex characteristics of power quality disturbances and classify them with near-perfect precision.

### Repository Contents

- **Data Preparation Scripts**: Scripts used for generating S-transforms and preparing the dataset.
- **Model Training Notebooks**: Detailed Jupyter notebooks illustrating the training process for both SVM and CNN models.
- **Pre-trained Models**: Access to the pre-trained models for immediate testing and deployment.
- **Testing Scripts**: Scripts to test the models on new data and evaluate their performance.
- **Documentation**: A comprehensive guide covering the project's objectives, methodology, and instructions for reproducing the results.

### Conclusion

This project stands as a testament to the power of deep learning in the realm of electrical engineering, offering a highly accurate and reliable method for classifying power quality disturbances. It opens avenues for further research and development in the field, promising enhanced reliability and efficiency in power systems operation.

Whether you're a researcher, engineer, or enthusiast in machine learning or electrical engineering, this repository provides valuable insights and tools for advancing in the field of power quality analysis.

---

We invite you to explore the repository, experiment with the models, and contribute to this evolving project. Your feedback and contributions are highly appreciated as we work together towards advancing the state of the art in power quality monitoring and analysis.

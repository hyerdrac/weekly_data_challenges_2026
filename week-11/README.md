# Week 11 – KMeans Cluster Practice

![Cluster Result](/week-11/plots/cluster_plot.png)

## About the Project

This project focuses on implementing the **K-Means Clustering** algorithm to partition a 2D dataset into distinct groups based on spatial similarity and statistical distribution.

---

## Goal

The primary objective for this week is to split a synthetic dataset, specifically designed for clustering practice, into **three optimal groups** using Euclidean distance and centroid-based partitioning.

---

## Dataset

* **Source:** [KMeans Clustering 2D Dataset](https://www.kaggle.com/datasets/neurocipher/kmeans-clustering-2d-dataset)
* **Description:**  

    This CSV file contains 150 two-dimensional data points with two numerical features:

    📍 x – Horizontal coordinate

    📍 y – Vertical coordinate

    The data was synthetically generated from three Gaussian distributions, forming three natural clusters:

    🟡 Top cluster around (0, 5)

    🟣 Bottom-left cluster around (-3, 0)

    🟢 Bottom-right cluster around (3, 0)

    This dataset is ideal for:

    🤖 Practicing K-Means clustering

    📉 Demonstrating the Elbow Method

    📊 Visualizing cluster behavior in 2D

    (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.

---

## Tools Used

* R
* cluster
* ggplot2


---

## What Was Done

- **Clustering:** Applied the K-Means algorithm with $K=3$ and used `nstart=25` to find the most stable centroids and avoid local optima.
- **Visualization:** Created a scatter plot using `ggplot2` with color-coded clusters and confidence ellipses to visualize the boundaries between the three groups.
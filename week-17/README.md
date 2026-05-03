# Week 17 – Kruskal-Wallis Analysis on Customer Segments

![Box Plot](/week-17/plots/boxplot.png)

## About the Project

This project is a statistical analysis designed to examine differences in post-purchase sales across various customer segments. By comparing multiple independent groups, the study evaluates whether customer segmentation has a measurable impact on sales performance.

---

## Goal

The primary objective is to determine whether there are statistically significant differences in **Sales_After** values among different **Customer_Segment** groups. Since the assumptions of normality and homogeneity of variances are not satisfied, non-parametric methods are used.

Through hypothesis testing (specifically the Kruskal-Wallis test and Dunn’s post-hoc analysis), this project aims to identify which customer segments differ from each other in terms of sales outcomes.

---

## Dataset

* **Source:** [Sales and Satisfaction](https://www.kaggle.com/datasets/matinmahmoudi/sales-and-satisfaction/data)
* **Description:** One dataset contains missing values (NaNs) and the other does not. These datasets contain information on sales and customer satisfaction before and after an intervention, as well as purchase data for control and treatment groups. The dataset is synthetic and was created for use in statistical analysis. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.
---

## Tools Used

* R  
* dplyr  
* ggplot2  
* ggpubr  
* rstatix  
* R Studio  

---

## What Was Done

* Performed exploratory data analysis to understand the structure and summary statistics of the dataset.
* Converted categorical variables into factor format for proper statistical handling.
* Tested statistical assumptions:
  * Applied the Shapiro-Wilk test to assess normality.
  * Used Levene’s test to evaluate homogeneity of variances.
* Determined that parametric test assumptions were violated.
* Applied the Kruskal-Wallis test as a non-parametric alternative to compare multiple groups.
* Conducted Dunn’s post-hoc test to identify pairwise differences between customer segments.
* Visualized the results using boxplots and annotated significant p-values.
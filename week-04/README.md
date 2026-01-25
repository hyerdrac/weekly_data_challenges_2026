# Week 04 – Exploratory Data Analysis with R


## About the Project

This project focuses on performing **basic exploratory data analysis (EDA)** using **R**.

The main purpose of this project is to understand the structure of the dataset, explore relationships between variables, and present insights through visual analysis using **ggplot2**.

---

## Goal

To explore the dataset by:
- Inspecting basic descriptive statistics
- Visualizing the relationship between numerical variables
- Analyzing variable distributions using histograms

---

## Dataset

* **Source:** [Pima Indians Diabetes Database](https://www.kaggle.com/datasets/uciml/pima-indians-diabetes-database)
* **Description:** This dataset is originally from the National Institute of Diabetes and Digestive and Kidney Diseases. The objective of the dataset is to diagnostically predict whether or not a patient has diabetes, based on certain diagnostic measurements included in the dataset. Several constraints were placed on the selection of these instances from a larger database. In particular, all patients here are females at least 21 years old of Pima Indian heritage. (Based on the original dataset description)

> The raw dataset is not included in this repository.

---

## Tools Used

* R
* ggplot2
* Base R
* RStudio

---

## What Was Done

* Loaded the dataset into R
* Performed initial data inspection using `head()`, `str()`, and `summary()`
* Created a scatter plots to analyze the relationship between variables
* Added a linear regression trend line using `geom_smooth(method = "lm")`
* Visualized the distribution of variables using a histogram

---


## Output

### Correlation Heatmap

![](/week-04/images/corr_heatmap.png)

This heatmap shows the correlation structure among numerical variables in the dataset.  
It helps identify strong positive or negative relationships and potential multicollinearity.

---

### Scatter Plot: Age vs Glucose

![](/week-04/images/corr_age_pregnancies.png)
![](/week-04/images/corr_insulin_skinthickness.png)
![](/week-04/images/corr_bmi_skinthickness.png)
![](/week-04/images/Rplot.png)

These scatter plots visualizes the relationship between variables.  
A linear regression line is added to highlight the overall trend.

---

### Histogram: Age Distribution

![](/week-04/images/hist_age.png)
![](/week-04/images/hist_bloodpressure.png)
![](/week-04/images/hist_bmi.png)

These histograms illustrates the distribution of variables, providing insight into its spread, central tendency, and possible skewness.

---

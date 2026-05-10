# Week 19 – Health Insurance Cost Analysis & Regression Modeling

## About the Project

This project investigates the impact of demographic factors and lifestyle habits on healthcare insurance costs. Through comprehensive Exploratory Data Analysis (EDA) and Feature Engineering, three distinct Linear Regression models were developed and evaluated to accurately predict insurance charges.

---

## Goal

The primary objective of this study is to model the relationship between various independent variables and the target variable, **charges**.

Key focus areas include:
* Quantifying the interaction effect between **Smoking Status** and **BMI** on total costs.
* Identifying key drivers of insurance premiums through data visualization.
* Optimizing model performance using feature engineering (interaction terms) and log transformations.
---

## Dataset

* **Source:** [Medical Cost Personal Datasets](https://www.kaggle.com/datasets/mirichoi0218/insurance)
* **Description:**  Machine Learning with R by Brett Lantz is a book that provides an introduction to machine learning using R. As far as I can tell, Packt Publishing does not make its datasets available online unless you buy the book and create a user account which can be a problem if you are checking the book out from the library or borrowing the book from a friend. All of these datasets are in the public domain but simply needed some cleaning up and recoding to match the format in the book. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.
---

## Tools Used

* R  
* ggplot2  
* dplyr
* reshape2  
* R Studio  

---

## What Was Done

* **Data Preprocessing:** Categorical variables were converted to `factors`. The `children` variable was relabeled with descriptive levels (e.g., "No kid", "1 kid") for better interpretability.
* **Exploratory Data Analysis (EDA):**
    * Distribution of age, BMI, and charges were analyzed using histograms.
    * Frequency of categorical variables was visualized via bar plots.
    * Relationship between numerical variables was assessed using a **Correlation Heatmap**.
* **Machine Learning & Modeling:**
    * **Model 1 (Baseline):** A multiple linear regression including all features.
    * **Model 2 (Feature Engineered):** Introduced an interaction term (`smoker * bmi`), significantly improving explanatory power.
    * **Model 3 (Log-Transformed):** Applied a `log(charges)` transformation to address the right-skewed nature of the target variable.
* **Diagnostic Analysis:** Performed residual analysis and checked model assumptions using diagnostic plots (`plot(model)`).

--- 
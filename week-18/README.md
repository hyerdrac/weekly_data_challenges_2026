# Week 18 – Linear Regression Analysis

![Scatter Plot](/week-18/plots/scatterplot_lm.png)

## About the Project

This project focuses on building and evaluating a simple linear regression model to understand the relationship between two numerical variables. By fitting a regression line to the observed data, the analysis aims to quantify how changes in an independent variable affect a dependent variable.

---

## Goal

The main objective of this project is to model the relationship between **x** (independent variable) and **y** (dependent variable) using linear regression.

The study aims to:

* Determine whether there is a linear relationship between variables  
* Estimate the strength and direction of this relationship  
* Evaluate model performance using error metrics  

---

## Dataset

* **Source:** [Linear Regression](https://www.kaggle.com/datasets/andonians/random-linear-regression/data)
* **Description:** The training dataset is a CSV file with 700 data pairs (x,y). The x-values are numbers between 0 and 100. The corresponding y-values have been generated using the Excel function NORMINV(RAND(), x, 3). Consequently, the best estimate for y should be x. The test dataset is a CSV file with 300 data pairs. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.
---

## Tools Used

* R  
* ggplot2  
* rstatix  
* R Studio  

---

## What Was Done

* Loaded and inspected the dataset using structural and summary statistics  
* Performed exploratory data analysis (EDA)  
* Visualized the relationship between variables using scatter plots  
* Built a simple linear regression model using `lm()`  
* Visualized the regression line with confidence intervals  
* Evaluated the model using test data  
* Calculated performance metrics:
  * RMSE (Root Mean Squared Error)  
  * MSE (Mean Squared Error)  
  * MAE (Mean Absolute Error)  
  * R² (Coefficient of Determination)  
* Generated diagnostic plots to assess model assumptions  

--- 
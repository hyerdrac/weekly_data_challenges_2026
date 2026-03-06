# Week 10 – Medical Cost Regression Analysis

![Regression Analysis Output](/week-10/plots/model_v2.png)

## About the Project

This project focuses on predicting annual medical insurance costs (charges) using various demographic and health-related attributes. Given that insurance data often exhibits non-linear relationships and skewed distributions, the analysis moves beyond a basic linear approach to implement feature engineering and model optimization.

---

## Goal

The primary objective is to develop a robust regression model that accurately estimates healthcare expenditures. The goal is to maximize the model's explanatory power ($R^2$) by identifying the most significant predictors and capturing the complex interactions between variables like BMI and smoking status.

---

## Dataset

* **Source:** [Medical Cost Personal Datasets](https://www.kaggle.com/datasets/mirichoi0218/insurance)
* **Description:**  Machine Learning with R by Brett Lantz is a book that provides an introduction to machine learning using R. As far as I can tell, Packt Publishing does not make its datasets available online unless you buy the book and create a user account which can be a problem if you are checking the book out from the library or borrowing the book from a friend. All of these datasets are in the public domain but simply needed some cleaning up and recoding to match the format in the book. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.

---

## Tools Used

* R
* caret
* ggplot2


---

## What Was Done

- Initial Modeling & Visualization:
    - Processed the input variables and applied a Log-Transformation to the charges column to normalize its right-skewed distribution.
    - Split the data into training (80%) and testing (20%) sets using stratified sampling to maintain a consistent distribution of the target variable.
    - Trained the baseline OLS (Ordinary Least Squares) model and visualized the initial "Actual vs. Predicted" results to identify areas for improvement
    
- Feature Engineering & Model Refinement:
    - To improve upon the baseline results, I refined the feature set by introducing Interaction Terms (bmi * smoker) and Polynomial Features ($Age^2$) to capture the accelerating nature of medical costs.
    - Trained a second, optimized model using these enhanced features.
    
- Final Evaluation:
    - Visualized the second model's performance, observing a significant improvement in accuracy.
    - Successfully increased the explanatory power from an initial $R^2: 0.77$ to a final $R^2: 0.79$, effectively reducing systematic bias in high-cost predictions.
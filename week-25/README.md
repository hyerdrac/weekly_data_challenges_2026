# Week 25 - Diamond Price Prediction

![Feature Importances](/week-25/plots/output_11_1.png)

## About the Project

This project focuses on building and evaluating a machine learning regression model to accurately predict diamond prices based on physical and gemological characteristics. By incorporating industry domain knowledge—such as understanding purity/clarity grading structures—and training a robust Random Forest Regressor, the analysis delivers high predictive performance while identifying the primary value drivers in the diamond market.

---

## Goal

The main objective is to build a reliable predictive model for diamond valuation and uncover the quantitative impact of various physical attributes on price.

The study aims to:

- Preprocess and encode categorical gemological features (cut, color, and clarity) while avoiding multicollinearity
- Train a non-linear machine learning model (Random Forest Regressor) capable of handling complex interactions
- Evaluate model performance using rigorous metrics ($R^2$, RMSE, and MAE)
- Extract and visualize feature importances to determine which characteristics most heavily dictate market price

---

## Dataset

- **Source:** [Diamonds Price](https://www.kaggle.com/datasets/nancyalaswad90/diamonds-prices)
- **Description:** This document explores a dataset containing prices and attributes for approximately 54,000 round-cut diamonds. There are 53,940 diamonds in the dataset with 10 features (carat, cut, color, clarity, depth, table, price, x, y, and z). Most variables are numeric in nature, but the variables cut, color, and clarity are ordered factor variables with the following levels. About the currency for the price column: it is Price ($) And About the columns x,y, and z they are diamond measurements as (( x: length in mm, y: width in mm,z: depth in mm )) . (Based on the original dataset description)

> The raw dataset can be accessed directly from Kaggle or loaded programmatically via Seaborn.

---

## Tools Used

- Python
- Pandas & NumPy
- Scikit-Learn
- Seaborn & Matplotlib
- Jupyter Notebook

---

## What Was Done

- Loaded and inspected the diamonds dataset, analyzing data distributions across numeric and categorical attributes
- Investigated the `clarity` grading feature and evaluated the trade-offs between retaining granular sub-categories versus grouping them using gemological domain knowledge
- Performed One-Hot Encoding (`pd.get_dummies`) on categorical features with `drop_first=True` to prevent multicollinearity
- Trained a Random Forest Regressor to capture complex, non-linear relationships between physical characteristics and price
- Evaluated the model on a held-out test set, achieving a strong $R^2$ score of $0.9782$, an RMSE of $578.23$, and an MAE of $291.77$
- Extracted feature importances from the trained model and visualized the top predictive features using Seaborn and Matplotlib barplots, confirming `volume` and `carat` weight as the dominant price determinants
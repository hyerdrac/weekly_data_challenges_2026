# Week 23 - Heart Failure Prediction Analysis

![Model Performance Analysis](/week-23/plots/output_18_0.png)

## About the Project

This project focuses on building and evaluating a machine learning classification model to predict heart failure risk based on clinical data. By rigorously handling missing medical values, engineering clinical interaction features, and calibrating decision thresholds, the analysis aims to maximize patient safety by minimizing false negative predictions.

---

## Goal

The main objective of this project is to model the relationship between various clinical indicators (independent variables) and the presence of heart disease (dependent variable) using classification algorithms.

The study aims to:

- Identify and properly impute biologically impossible values without data leakage
- Capture complex clinical risks by engineering interaction features (e.g., Chest Pain Type & ST Slope)
- Shift the model's decision boundary to prioritize medical sensitivity
- Evaluate model performance using advanced medical diagnostic metrics

---

## Dataset

* **Source:** [Heart Failure Prediction Dataset](https://www.kaggle.com/datasets/fedesoriano/heart-failure-prediction)
* **Description:** Cardiovascular diseases (CVDs) are the number 1 cause of death globally, taking an estimated 17.9 million lives each year, which accounts for 31% of all deaths worldwide. Four out of 5CVD deaths are due to heart attacks and strokes, and one-third of these deaths occur prematurely in people under 70 years of age. Heart failure is a common event caused by CVDs and this dataset contains 11 features that can be used to predict a possible heart disease. People with cardiovascular disease or who are at high cardiovascular risk (due to the presence of one or more risk factors such as hypertension, diabetes, hyperlipidaemia or already established disease) need early detection and management wherein a machine learning model can be of great help. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.
---

## Tools Used

- Python
- Pandas & NumPy
- Scikit-learn
- Matplotlib & Seaborn
- Jupyter Notebook

---

## What Was Done

- Loaded and inspected the dataset using structural and summary statistics
- Performed exploratory data analysis (EDA)
- Encoded binary categorical variables to 0/1 and applied One-Hot Encoding for multi-class variables
- Identified biologically impossible values (zeros in `RestingBP` and `Cholesterol`) and replaced them with `NaN`
- Prevented data leakage by strictly applying `train_test_split` before imputation
- Imputed missing medical data using `IterativeImputer` (Multiple Imputation by Chained Equations - MICE)
- Engineered Interaction Features by multiplying one-hot encoded `ChestPainType` and `ST_Slope` columns
- Trained a classification model and analyzed initial predictions
- Optimized the decision threshold (shifted to 0.35) to minimize False Negatives
- Calculated final medical performance metrics (at 0.35 threshold):
  * Recall / Sensitivity (0.96)
  * Precision (0.83)
  * Accuracy (0.87)
  * F1 Score (0.89)
- Generated diagnostic plots to assess model performance (Confusion Matrix, ROC Curve, PR Curve, Probability Distribution)

---
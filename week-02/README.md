# Week 02 – Data Challenge


## About the Project

The goal of this project is to build a machine learning model for customer churn prediction using a churn analysis dataset.
During the development process, I also encountered the concept of data drift, caused by distribution differences between the training and test datasets. This project therefore focuses not only on model performance, but also on understanding how data distribution shifts can impact real-world machine learning results.

---

## Goal

- To build a machine learning model for predicting customer churn.

- To analyze how the trained model behaves when applied to data from a different time period.

---

## Dataset

* **Source:** [Customer Churn Dataset](https://www.kaggle.com/datasets/muhammadshahidazeem/customer-churn-dataset)
* **Description:**  Customer churn refers to the phenomenon where customers discontinue their relationship or subscription with a company or service provider. It represents the rate at which customers stop using a company's products or services within a specific period. Churn is an important metric for businesses as it directly impacts revenue, growth, and customer retention. In the context of the Churn dataset, the churn label indicates whether a customer has churned or not. A churned customer is one who has decided to discontinue their subscription or usage of the company's services. On the other hand, a non-churned customer is one who continues to remain engaged and retains their relationship with the company. Understanding customer churn is crucial for businesses to identify patterns, factors, and indicators that contribute to customer attrition. By analyzing churn behavior and its associated features, companies can develop strategies to retain existing customers, improve customer satisfaction, and reduce customer turnover. Predictive modeling techniques can also be applied to forecast and proactively address potential churn, enabling companies to take proactive measures to retain at-risk customers. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.

---

## Tools Used

* Python
* pandas
* scikit-learn
* scipy
* matplotlib / seaborn
* Jupyter Notebook

---

## What Was Done

* Exploratory Data Analysis (EDA)
* Validation-based model training (Logistic Regression)
* Label drift detection using **Chi-square test**
* Feature-level data drift analysis using **Kolmogorov–Smirnov test**
* Feature importance analysis using **Permutation Importance**
* Interpretation of performance degradation from a data perspective

---

## Key Takeaways

* High validation performance does not guarantee good test performance
* Label drift and data drift can significantly impact model results
* Feature importance combined with drift analysis provides strong insights into model failure
* In many cases, the main issue is not the model, but the data itself

---

## Notes

This project is intended as a learning exercise and focuses on understanding **why models fail**, not just how to improve metrics.

# Week 03 – Ordinary Least Squares (Manual Implementation)

![](/week-03/images/output_28_0.png)

## About the Project

The goal of this project is to implement **Ordinary Least Squares (OLS) regression manually**, without relying on high-level regression libraries.
Instead of using ready-made functions, all core components of the OLS methodology are computed step by step in order to gain a deeper understanding of linear regression mechanics and statistical inference.

The project focuses on **simple linear regression** and emphasizes interpretation, diagnostics, and model significance rather than predictive performance.

---

## Goal

- To manually compute OLS regression coefficients $\beta_0$ and $\beta_1$
- To generate predictions using the estimated model
- To analyze residuals and assess model assumptions
- To evaluate overall model significance using ANOVA, \(R^2\), Adjusted \(R^2\), and the F-test

---

## Dataset

## Dataset

* **Source:** [Salary Data - Dataset for Linear Regression](https://www.kaggle.com/datasets/shubham47/salary-data-dataset-for-linear-regression)
* **Description:** Simply use for linear regression (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.

---

## Tools Used

* Python
* numpy
* pandas
* matplotlib
* seaborn
* Jupyter Notebook

> No built-in regression libraries (e.g. `statsmodels`, `sklearn`) were used for model estimation.

---


## What Was Done

* Manual implementation of **Ordinary Least Squares (OLS)** for simple linear regression
* Estimation of regression coefficients $\beta_0$ and $\beta_1$ without using built-in regression libraries
* Generation of fitted values and residuals
* Computation of standardized residuals
* Residual diagnostics using scatter plots (standardized residuals vs. fitted values)
* Construction of the **ANOVA table** (SSR, SSE, SST)
* Evaluation of model fit using **\(R^2\)** and **Adjusted \(R^2\)**
* Assessment of overall model significance using the **F-test**

---

## Key Takeaways

* OLS regression can be fully implemented from first principles without relying on ready-made libraries
* Residual analysis is essential for validating linear regression assumptions
* The ANOVA framework provides a clear decomposition of explained and unexplained variation
* \(R^2\) alone is not sufficient; Adjusted \(R^2\) and the F-test give a more reliable assessment of model significance
* Understanding the underlying mathematics improves interpretability and trust in regression results

---

## Notes

This project is intended as a **foundational statistical learning exercise**.  
The focus is on understanding the mechanics, assumptions, and interpretation of OLS regression rather than on model optimization or predictive performance.

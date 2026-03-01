# Week 09 – Boston House Price Regression Analysis

![Residual Analysis Output](/week-09/graphs/output_9_0.png)

## About the Project

The primary goal of this project is to analyze the key determinants of housing prices using the **Boston Housing Dataset**. Beyond simple correlation, this study employs advanced **Multiple Linear Regression (OLS)** techniques to quantify how various socio-economic and environmental factors influence property values.

---

## Goal

- Identifying significant predictors by addressing multicollinearity through **VIF (Variance Inflation Factor)** analysis.
- Validating OLS assumptions through detailed residual diagnostics (Breusch-Pagan, Durbin-Watson, and Q-Q plots).
- Improving predictive power and addressing heteroscedasticity by transitioning from a linear to a **Log-Linear model architecture**.

---

## Dataset

* **Source:** [Boston House Prices-Advanced Regression Techniques](https://www.kaggle.com/datasets/fedesoriano/the-boston-houseprice-data)
* **Description:**  The Boston house-price data of Harrison, D. and Rubinfeld, D.L. 'Hedonic prices and the demand for clean air', J. Environ. Economics & Management, vol.5, 81-102, 1978. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.

---

## Tools Used

* Python
* pandas
* statsmodel
* matplotlib
* seaborn


---

## What Was Done

- Conducted Exploratory Data Analysis (EDA): Analyzed the distribution of housing prices and the relationships between socio-economic variables.
- Initial Model Construction: Trained an initial Multiple Linear Regression (OLS) model using the complete set of 13 independent variables.
- Multicollinearity Diagnostic: Performed feature selection by calculating Variance Inflation Factors (VIF) to identify and remove highly correlated variables like TAX.
- Statistical Refinement: Improved model parsimony by removing statistically insignificant variables ($p > 0.05$) such as AGE and INDUS.
- Residual Analysis & Diagnostics: Conducted a comprehensive error analysis using Breusch-Pagan for heteroscedasticity and Durbin-Watson for autocorrelation.
- Log-Linear Transformation: Re-trained the model using a log-transformed dependent variable ($log(MEDV)$) to address non-linearity and stabilize error variance.
- Model Optimization: Re-evaluated the model after removing the ZN variable to ensure all remaining predictors were highly significant ($p < 0.01$).
- Performance Comparison: Analyzed the improvement in model fit by comparing Log-Likelihood, AIC/BIC values, and residual plots across different model iterations.
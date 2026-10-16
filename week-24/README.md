# Week 24 - A/B Test Evaluation: Revenue and Conversion Analysis

## About the Project

This project focuses on rigorously evaluating an A/B test designed to measure the impact of a new product variant on user revenue and conversion. By thoroughly checking statistical assumptions, identifying severe zero-inflation in the data, and adapting the testing strategy to focus on conversion rates, the analysis provides a robust, data-driven recommendation on whether to roll out the new feature.

---

## Goal

The main objective is to determine if the new variant (treatment) statistically outperforms the control group in driving purchases. 

The study aims to:

- Validate statistical assumptions (Normality and Homogeneity of Variance) for continuous revenue data
- Address extreme zero-inflation inherent in real-world e-commerce/conversion data
- Evaluate user conversion rates using categorical statistical tests
- Translate statistical p-values into an actionable business and product development recommendation

---

## Dataset

* **Source:** [A/B test data](https://www.kaggle.com/datasets/sergylog/ab-test-data/data)
* **Description:** The site launched an A/B test in order to increase income. The excel file contains raw data on the results of the experiment (user_id), sample type (variant_name) and income brought by the user (revenue).
The task is to analyze the results of the experiment and write your recommendations. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.
---

## Tools Used

- Python
- Pandas & NumPy
- SciPy
- Jupyter Notebook

---

## What Was Done

- Loaded and inspected the user revenue dataset for the Control (n=4984) and Variant (n=5016) groups
- Checked statistical assumptions using the Shapiro-Wilk test for normality ($p = 0.0000$, non-normal) and Levene's test for homogeneity of variance ($p = 0.2037$, homogeneous)
- Explored the data distribution and identified extreme zero-inflation and severe right-skewness through summary statistics (25th, 50th, and 75th percentiles all equal to 0.0)
- Visualized the data distribution using Seaborn boxplots to highlight the concentration of zeroes and the presence of extreme outliers
- Determined that standard non-parametric tests (like Mann-Whitney U) would lose statistical power due to massive ties at zero
- Reframed the business problem from "average revenue per user" to "conversion rate" to better capture the variant's impact on user behavior
- Engineered a new binary categorical feature `CONVERTED` (1 if `REVENUE` > 0, otherwise 0)
- Constructed a 2x2 contingency table and executed a Chi-Square Test of Independence
- Evaluated the test results ($p = 0.5406$), concluding there is no statistically significant difference in conversion rates between the groups
- Delivered a final business recommendation: Halt the deployment of the variant, as it does not provide a statistically significant uplift, thereby saving engineering resources for more impactful hypotheses
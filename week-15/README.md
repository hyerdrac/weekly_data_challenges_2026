# Week 15 – Monte Carlo Simulation

![Distribution Plot](/week-15/plots/output_9_0.png)

## About the Project

This project implements a Monte Carlo simulation to conduct a comprehensive risk analysis for a new product launch, moving beyond traditional deterministic models. By treating uncertain variables like sales volume and production costs as probability distributions, it provides a data-driven forecast of potential profit outcomes and financial risks. Developed in Python, this simulation serves as a practical tool for understanding how randomness and volatility impact business decision-making.

---

## Goal

The primary objective of this project is to transition from static, single-point estimates to a probabilistic framework for financial forecasting. By simulating thousands of potential scenarios, the goal is to quantify the impact of market uncertainty on net profit, identify the probability of a deficit, and provide stakeholders with a clear "Value at Risk" (VaR) assessment to guide more resilient strategic decisions.

---

## Dataset

Instead of using a kaggle dataset, this project utilizes synthetic data generated through `numpy`. Key business variables are modeled as random samples drawn from specific probability distributions (Normal, Uniform, and Triangular) to simulate 10,000 unique market scenarios. This approach allows for a dynamic assessment of outcomes based on probabilistic inputs rather than fixed, deterministic values.

---

## Tools Used

* Python
* Numpy
* Seaborn
* Matplotlib
* Jupyter Notebook


---

## What Was Done

* **Deterministic Modeling:** Established a baseline by calculating the net profit using single-point, static estimates (mean values) for each variable.
* **Probabilistic Simulation:** Developed a Monte Carlo engine that ran 10,000 iterations, drawing random samples from Normal, Uniform, and Triangular distributions to represent real-world volatility.
* **Risk Metric Calculation:** 
    * Determined the **Probability of Loss** by calculating the ratio of simulations where profit fell below zero.
    * Calculated the **Success Rate** for achieving a target profit of 250,000 TL or higher.
* **Statistical Analysis:** Identified the **5th Percentile (Value at Risk - VaR)** and **95th Percentile** to define the most likely range of financial outcomes with a 95% confidence level.
* **Data Visualization:** Produced a professional-grade histogram using `Seaborn` and `Matplotlib`, featuring formatted currency axes and a red-line indicator for the break-even threshold.
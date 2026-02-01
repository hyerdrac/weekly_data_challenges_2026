# Week 05 – Paired Analysis of CO₂ Emissions Using Wilcoxon Signed-Rank Test

## About the Project

This project analyzes the effect of **engine cylinder count** on **CO₂ emissions** using the **Wilcoxon Signed-Rank Test**, a non-parametric method suitable for paired data.

Vehicles with the same **make, model, and vehicle class** were matched and divided into two groups based on cylinder count (4-cylinder vs. 6-cylinder).  
The goal is to determine whether vehicles with more cylinders emit higher levels of CO₂.

Statistical inference is supported by paired data visualization techniques.

---

## Goal

The objectives of this project are to:

- Construct paired observations using vehicles with identical characteristics
- Compare CO₂ emissions between 4-cylinder and 6-cylinder engines
- Test whether 6-cylinder vehicles emit significantly more CO₂ than 4-cylinder vehicles
- Support statistical findings with appropriate visualizations

---

## Dataset

* **Source:** [CO2 Emission by Vehicles](https://www.kaggle.com/datasets/debajyotipodder/co2-emission-by-vehicles/data)
* **Description:** This dataset captures the details of how CO2 emissions by a vehicle can vary with the different features. The dataset has been taken from Canada Government official open data website. This is a compiled version. This contains data over a period of 7 years. There are total 7385 rows and 12 columns. There are few abbreviations that has been used to describe the features. I am listing them out here. The same can be found in the Data Description sheet.

> The raw dataset is not included in this repository.

---

## Methodology

### Data Preparation

- Vehicles were filtered to ensure identical make, model, and vehicle class
- Data were split into two paired groups:
  - `CO2_group4` (4-cylinder vehicles)
  - `CO2_group6` (6-cylinder vehicles)
- Missing values were handled by replacing them with the column mean

---

## Hypothesis Testing

The paired difference in CO₂ emissions is defined as:

$$
D = CO_{2}^{(6)} - CO_{2}^{(4)}
$$

### Two-Sided Wilcoxon Signed-Rank Test

- **Null Hypothesis (H₀):** $ \tilde{D} = 0 $  
- **Alternative Hypothesis (H₁):** $ \tilde{D} \neq 0 $

### One-Sided Wilcoxon Signed-Rank Test

- **Null Hypothesis (H₀):** $ \tilde{D} \leq 0 $  
- **Alternative Hypothesis (H₁):** $ \tilde{D} > 0 $

---

## Statistical Results

### One-Sided Wilcoxon Signed-Rank Test

- Test statistic (W): 45.0  
- p-value: 0.001953  

Since the p-value is less than the significance level of 0.05, the null hypothesis is rejected.  
This provides strong statistical evidence that **6-cylinder vehicles emit more CO₂ than 4-cylinder vehicles**.

---

## Visualizations

### Paired Line Plot

- Each line represents a matched vehicle model
- All pairs show higher CO₂ emissions for 6-cylinder engines
- This consistent increase explains the strong Wilcoxon test result

### Boxplot

- The median CO₂ emission for 6-cylinder vehicles is higher
- The entire distribution is shifted upward relative to 4-cylinder vehicles
- This indicates a systematic effect rather than one driven by outliers

---

## Conclusion

Using the Wilcoxon Signed-Rank Test on paired vehicle data, this study demonstrates that increasing the number of cylinders from 4 to 6 is associated with a statistically significant increase in CO₂ emissions.

The paired design ensures that the observed effect is attributable to engine configuration rather than differences in vehicle make, model, or class.

---

## Tools Used

- Python
- pandas
- numpy
- scipy
- matplotlib
- Jupyter Notebook
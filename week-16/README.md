# Week 16 – Paired T-Test Golf Balls

![Box Plot](/week-16/plots/boxplot.png)

## About the Project

This project is a comparative statistical analysis designed to evaluate the impact of surface coatings on the aerodynamic performance and displacement of golf balls. By comparing uncoated control groups with coated experimental units, the study examines how surface modifications influence friction and travel distance under consistent mechanical force.

---

## Goal

The primary objective is to determine whether applying a specific surface coating to golf balls results in a statistically significant difference in movement distance. Through hypothesis testing (such as Paired T-Tests or Wilcoxon Signed-Rank Tests), this project aims to quantify the effect of coating as a variable in athletic performance and ball kinematics.

---

## Dataset

* **Source:** [Golf ball testing data set from Par Inc](https://www.kaggle.com/datasets/ipravin/golf-ball-testing-data-set-from-par-inc/data)
* **Description:** Par Inc., is a major manufacturer of golf equipment. Management believes that Par’s market share could be increased with the introduction of a cut-resistant, longer-lasting golf ball. Therefore, the research group at Par has been investigating a new golf ball coating designed to resist cuts and provide a more durable ball. The tests with the coating have been promising. One of the researchers voiced concern about the effect of the new coating on driving distances. Par would like the new cut-resistant ball to offer driving distances comparable to those of the current-model golf ball. To compare the driving distances for the two balls, 40 balls of both the new and current models were subjected to distance tests. The testing was performed with a mechanical hitting machine so that any difference between the mean distances for the two models could be attributed to a difference in the design. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.

---

## Tools Used

* R
* tidyverse
* rstatix
* ggpubr
* R Studio


---

## What Was Done

* Formulated the null and alternative hypotheses to investigate the impact of surface coating on golf ball travel distance.
* Conducted statistical tests, including the Shapiro-Wilk test for normality, to ensure the validity of the analytical model.
* Applied the Wilcoxon Signed-Rank Test as a non-parametric approach to evaluate the significance of the differences between coated and uncoated groups.

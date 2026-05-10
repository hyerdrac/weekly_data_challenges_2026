# Week 19 – Teen Mental Health Vizulazitation

![Bar Plot](/week-19/plots/bar_1.png)

## About the Project

!!! First version of this week was a copy of my previous project. When I realized, I fixed it and made this project !!!

This project focuses on analyzing and visualizing the impact of social media habits and demographic factors on the mental health of teenagers. By utilizing **Exploratory Data Analysis (EDA)** in R, the study examines how variables like platform preference and daily usage hours relate to psychological indicators such as stress and depression.

---

## Goal

The primary objective is to transform raw survey data into actionable visual insights. Key goals include:
* **Platform Comparison:** Evaluating which social media platforms have the highest average daily usage.
* **Demographic Analysis:** Identifying differences in social media consumption patterns across genders.
* **Trend Identification:** Visualizing the distribution of stress levels and their relationship with academic performance.

---

## Dataset

* **Source:** [Social Media Impact on Teen Mental Health](https://www.kaggle.com/datasets/algozee/teenager-menthal-healy)
* **Description:** This dataset studies how social media use affects the mental health of teenagers. It includes daily habits like social media hours, sleep, stress, anxiety, and physical activity. The goal is to understand if high social media use is linked with problems like stress, anxiety, and depression. The data helps in analyzing behavior and building machine learning models to predict mental health risk. Overall, this dataset is useful for basic research and for creating models that can help in early detection of mental health issues in teenagers. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.
---

## Tools Used

* R  
* ggplot2
* dplyr
* R Studio  

---

## What Was Done

* Data Preprocessing
    * Cleaned and transformed character variables into `factors` for better categorical analysis.
    * Re-coded the `depression_label` (0/1) into descriptive labels ("no"/"yes") to ensure clarity in visualizations.

* Exploratory Data Analysis (EDA)
    * **Daily Usage by Platform:** Filtered specific platform data and used `summarise()` to calculate average hours, visualized via `geom_col`.
    * **Gender-Based Consumption:** Analyzed the mean usage hours per gender using a minimal theme.
    * **Psychological Profiling:** Created bar charts to show the frequency distribution of different stress levels among participants.
    * **Performance Analysis:** Used scatter plots (`geom_point`) to check for correlations between social media screen time and academic success.


--- 
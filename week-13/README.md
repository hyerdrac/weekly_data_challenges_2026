# Week 13 – Top 10 Actor/Actress Appearence in the Turkish Shows/Movies

![Bar Plot](/week-13/plots/output_6_0.png)

## About the Project

This project explores the landscape of Turkish cinema and television through the lens of performer visibility. Rather than focusing solely on "stardom," this analysis identifies the "Indispensables"—the most prolific talents who form the backbone of the industry. By analyzing the frequency of appearances across a vast catalog of titles, we highlight the familiar faces that define sectoral continuity.

---

## Goal

The primary objective was to transform raw, unstructured "Cast" data into an actionable frequency report. By cleaning comma-separated strings and performing a granular distribution analysis, the project aims to visualize the top 10 most active performers using professional-grade data storytelling techniques.

---

## Dataset

* **Source:** [Netflix Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)
* **Description:**   Netflix is one of the most popular media and video streaming platforms. They have over 8000 movies or tv shows available on their platform, as of mid-2021, they have over 200M Subscribers globally. This tabular dataset consists of listings of all the movies and tv shows available on Netflix, along with details such as - cast, directors, ratings, release year, duration, etc. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.

---

## Tools Used

* Python
* Jupyter Notebook
* matplotlib
* pyplot
* pandas


---

## What Was Done

- Data Parsing: Cleaned the 'Cast' column by splitting comma-separated strings into Python lists to handle multi-actor entries per production.

- Structural Transformation: Utilized the .explode() method to unnest lists, ensuring each actor's appearance was counted as an individual observation.

- Frequency Analysis: Aggregated the data using .value_counts() to determine the project volume for each unique performer.

- Top-N Filtering: Sliced the data to focus on the "Top 10" most prolific individuals for better visual clarity and insight focus.

- Visual Design: - Applied a soft yet vibrant color palette (Set2/flare) to enhance aesthetic appeal.
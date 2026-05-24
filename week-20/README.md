# Week 20 – Gym Members Exercise Tracking Classification

![Confusion Matrix](/week-20/plots/conf_matrix.png)

## About the Project

This project focuses on predicting gym members’ exercise experience levels using machine learning techniques in R. By applying a **Random Forest Classification Model**, the study analyzes demographic, physiological, and workout-related variables to classify individuals into different fitness experience categories.

The project combines **data preprocessing**, **classification modeling**, and **performance evaluation** to better understand which factors contribute most to exercise experience prediction.

---

## Goal

The primary objective is to build and evaluate a multiclass classification model capable of predicting users’ fitness experience levels. Key goals include:

* **Classification Modeling:** Predicting whether a gym member is a Beginner, Intermediate, or Expert.
* **Feature Analysis:** Investigating how variables such as BMI, workout duration, calories burned, and heart rate influence predictions.
* **Model Evaluation:** Measuring classification performance using confusion matrices and ROC/AUC analysis.
* **Data Transformation:** Preparing categorical and numerical variables for machine learning applications.

---

## Dataset

* **Source:** [Gym Members Exercise Dataset](https://www.kaggle.com/datasets/valakhorasani/gym-members-exercise-dataset)
* **Description:** This dataset provides a detailed overview of gym members' exercise routines, physical attributes, and fitness metrics. It contains 973 samples of gym data, including key performance indicators such as heart rate, calories burned, and workout duration. Each entry also includes demographic data and experience levels, allowing for comprehensive analysis of fitness patterns, athlete progression, and health trends. (Based on the original dataset description)

> The raw dataset is not included in this repository. Please refer to the original Kaggle source.

---

## Tools Used

* R  
* dplyr  
* randomForest  
* caret  
* pROC  
* ggplot2  
* R Studio  

---

## What Was Done

* Data Preprocessing
    * Selected relevant workout and physiological variables for classification analysis.
    * Converted categorical variables such as `Gender` and `Workout_Type` into `factors`.
    * Transformed `Experience_Level` into labeled categories ("Beginner", "Intermediate", "Expert").
    * Normalized the `Fat_Percentage` variable for consistency.

* Machine Learning Model
    * Split the dataset into training and testing sets using stratified sampling with `createDataPartition()`.
    * Built a Random Forest classification model using `randomForest()`.
    * Generated predictions for unseen test data.

* Model Evaluation
    * Created a confusion matrix using `confusionMatrix()` to evaluate classification performance.
    * Visualized prediction accuracy with a heatmap using `ggplot2`.
    * Calculated probability predictions for ROC and AUC analysis.
    * Evaluated model discrimination performance using ROC curves.

* Visualization
    * Designed a confusion matrix heatmap with custom color gradients.
    * Visualized ROC curve performance for classification assessment.

---
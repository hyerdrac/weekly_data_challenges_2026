library(dplyr)
library(randomForest)
library(caret)
library(pROC)

# ------------------------------------------------------------------------------
# DATA PREPROCESSING
# ------------------------------------------------------------------------------

data <- read.csv("gym_members_exercise_tracking.csv")

head(data)
str(data)

data <- data %>% select(Age, Gender, Avg_BPM, Session_Duration..hours., Calories_Burned, Workout_Type, Fat_Percentage, Water_Intake..liters., Workout_Frequency..days.week., BMI, Experience_Level) %>% 
  mutate(
    Gender = as.factor(Gender),
    Workout_Type = as.factor(Workout_Type),
    Fat_Percentage = Fat_Percentage / 100,
    Workout_Frequency..days.week. = as.factor(Workout_Frequency..days.week.),
    Experience_Level = factor(
      Experience_Level,
      levels = c(1,2,3),
      labels = c("Beginner", "Intermediate", "Expert")
    )
  )

head(data)

# ------------------------------------------------------------------------------
# RANDOM FOREST MODEL
# ------------------------------------------------------------------------------

set.seed(0)

trainIndex <- createDataPartition(
  data$Experience_Level,
  p = 0.8,
  list = FALSE
)

trainData <- data[trainIndex, ]
testData  <- data[-trainIndex, ]

rf_model <- randomForest(
  Experience_Level ~ .,
  data = trainData,
  ntree = 500,
  importance = TRUE
)

predictions <- predict(
  rf_model,
  newdata = testData
)

# ------------------------------------------------------------------------------
# CONFUSION MATRIX
# ------------------------------------------------------------------------------

cm <- confusionMatrix(
  predictions,
  testData$Experience_Level
)

cm_df <- as.data.frame(cm$table)

ggplot(cm_df, aes(Prediction, Reference, fill = Freq)) +
  geom_tile() +
  geom_text(aes(label = Freq), color = "white", size = 6) +
  scale_fill_gradient(low = "limegreen", high = "darkgreen") +
  theme_minimal() +
  labs(
    title = "Confusion Matrix",
    x = "Predicted",
    y = "Actual"
  )

# ------------------------------------------------------------------------------
# ROC, AUC CURVE
# ------------------------------------------------------------------------------

prob_predictions <- predict(
  rf_model,
  newdata = testData,
  type = "prob"
)

roc_obj <- roc(
  testData$Experience_Level,
  prob_predictions[,2]
)

plot(roc_obj, col = "blue", lwd = 3)

auc(roc_obj)

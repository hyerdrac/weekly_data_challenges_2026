data <- read.csv("insurance.csv")

head(data)

unique(data$region)
unique(data$sex)
unique(data$smoker)

data$sex <- factor(data$sex, levels=c("female","male"))
data$smoker <- factor(data$smoker, levels=c("no","yes"))

data$sex <- as.numeric(data$sex)
data$smoker <- as.numeric(data$smoker)

library(fastDummies)
data <- dummy_cols(data, select_columns = "region")
data$region <- NULL

head(data)


library(ggplot2)

ggplot(data, aes(x = charges)) +
  geom_histogram(bins = 30,           
                 fill = "#69b3a2",    
                 color = "#e9ecef") + 
  labs(title = "Distrubition of charges",
       x = "Values",
       y = "Observation") +
  theme_minimal()

ggplot(data, aes(x = bmi)) +
  geom_histogram(bins = 30,           
                 fill = "#69b3a2",    
                 color = "#e9ecef") + 
  labs(title = "Distrubition of bmi",
       x = "Values",
       y = "Observation") +
  theme_minimal()


ggplot(data, aes(x = age)) +
  geom_histogram(bins = 30,           
                 fill = "#69b3a2",    
                 color = "#e9ecef") + 
  labs(title = "Distrubition of age",
       x = "Values",
       y = "Observation") +
  theme_minimal()

data$charges <- log(data$charges)

head(data)


#--------------------------------------------------------------------
# MODEL SECTION
#--------------------------------------------------------------------


library(caret)
 
set.seed(0)
train_index <- createDataPartition(data$charges, p = 0.8, list = FALSE)
train_data <- data[train_index, ]
test_data  <- data[-train_index, ]

model <- lm(charges ~ ., data = train_data)
predictions <- predict(model, newdata = test_data)

actuals <- test_data$charges
rmse_val <- RMSE(predictions, actuals)
mae_val  <- MAE(predictions, actuals)
r2_val   <- R2(predictions, actuals)

# Print Results
cat("--- Model Performance Metrics ---\n")
cat("RMSE (Root Mean Squared Error):", round(rmse_val, 2), "\n")
cat("MAE (Mean Absolute Error):    ", round(mae_val, 2), "\n")
cat("R-Squared:                    ", round(r2_val, 4), "\n")


#--------------------------------------------------------------------
# VISUALIZING MODEL
#--------------------------------------------------------------------


plot(actuals, predictions, 
     main = "Actual vs. Predicted Charges",
     xlab = "Actual Charges", 
     ylab = "Predicted Charges",
     pch = 16, col = rgb(0.2, 0.4, 0.6, 0.5))
abline(0, 1, col = "red", lwd = 2) # The identity line


#--------------------------------------------------------------------
# FEATURE ENGINEERING, IMPROVED MODEL
#--------------------------------------------------------------------


train_data$age2 <- train_data$age^2

model_v2 <- lm(charges ~ age + age2 + children + bmi * smoker + region_northeast + region_northwest + region_southeast + region_southwest, 
               data = train_data)
summary(model_v2)

test_data$age2 <- test_data$age^2
predictions_v2 <- predict(model_v2, newdata = test_data)

actuals <- test_data$charges
rmse_v2 <- RMSE(predictions_v2, actuals)
r2_v2 <- R2(predictions_v2, actuals)

cat("--- Improved Model Metrics ---\n")
cat("New RMSE:", round(rmse_v2, 4), "\n")
cat("New R-Squared:", round(r2_v2, 4), "\n")

plot(actuals, predictions_v2, 
     main = "Actual vs. Predicted Charges",
     xlab = "Actual Charges", 
     ylab = "Predicted Charges",
     pch = 16, col = rgb(0.2, 0.4, 0.6, 0.5))
abline(0, 1, col = "red", lwd = 2) # The identity line
library(ggplot2)
library(rstatix)

data <- read.csv("train.csv")
str(data)
data %>% get_summary_stats(type="common")

ggplot(data) +
  geom_point(aes(x=x, y=y), color="white") +
  xlab("X Label") +
  ylab("Y Label") +
  xlim(0,100) +
  ylim(-5, 110) +
  theme_dark()

# Linear Regression

model <- lm(y ~ x, data = data)


# Visualization and Results

ggplot(data) +
  geom_point(aes(x = x, y = y), color = "white") +
  geom_smooth(aes(x = x, y = y), method = "lm", se = TRUE, color = "red") +
  xlab("X Label") +
  ylab("Y Label") +
  xlim(0, 100) +
  ylim(-5, 110) +
  theme_dark()

summary(model)
plot(model)

# Prediction with test.csv

test_data <- read.csv("test.csv")
pred <- predict(model, newdata = test_data)

result <- data.frame(
  value = test_data$y,
  prediction = pred
)

rmse <- sqrt(mean((result$value - result$prediction)^2))
mse  <- mean((result$value - result$prediction)^2)
mae  <- mean(abs(result$value - result$prediction))

ss_res <- sum((result$value - result$prediction)^2)
ss_tot <- sum((result$value - mean(result$value))^2)
r2 <- 1 - (ss_res / ss_tot)

metrics <- data.frame(
  RMSE = rmse,
  MSE  = mse,
  MAE  = mae,
  R2   = r2
)

metrics
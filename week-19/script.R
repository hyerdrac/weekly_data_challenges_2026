library(dplyr)
library(ggplot2)
library(reshape2)

data <- read.csv("insurance.csv")

head(data)
str(data)
data %>% apply(2, table)


data <- data %>%
  mutate(
    sex = as.factor(sex),
    smoker = as.factor(smoker),
    region = as.factor(region),
    children = factor(children, levels = 0:5, 
                      labels = c("No kid", "1 kid", "2 kids", "3 kids", "4 kids", "5 kids"))
  )

str(data)


# ========================================================
# VISUALIZATION
# ========================================================

# Distribution of age

data %>% ggplot() +
  geom_histogram(aes(age))

# Distribution of bmi

data %>% ggplot() +
  geom_histogram(aes(bmi))

# Distribution of charges

data %>% ggplot() +
  geom_histogram(aes(charges))

# Barplot of sex

data %>% ggplot() +
  geom_bar(aes(sex))

# Barplot of children

data %>% ggplot() +
  geom_bar(aes(children))

# Barplot of smoker

data %>% ggplot() +
  geom_bar(aes(smoker))

# Barplot of region

data %>% ggplot() +
  geom_bar(aes(region))

# Correlation Heatmap

numeric_cols <- data[,c(1,3,7)]
cor_matrix <- cor(numeric_cols, use = "complete.obs", method = "pearson")

cor_df <- melt(cor_matrix)

ggplot(cor_df, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(
    low = "blue",
    mid = "white",
    high = "red",
    midpoint = 0,
    limits = c(-1, 1)
  ) +
  theme_minimal() +
  labs(fill = "Correlation")

# ========================================================
# MACHINE LEARNING
# ========================================================

# Linear Regression 1
model_1 <- lm(charges ~ ., data = data)
summary(model_1)

par(mfrow=c(2,2))
plot(model_1)

# Linear Regression 2 (feature engineered)
model_2 <- lm(charges ~ age + bmi + smoker*bmi + children + region + sex, data=data)
summary(model_2)

par(mfrow=c(2,2))
plot(model_2)

# Linear Regression 3 (log transformed)

model_3 <- lm(log(charges) ~ age + bmi + children + smoker * bmi + region, data = data)
summary(model_3)

par(mfrow=c(2,2))
plot(model_3)
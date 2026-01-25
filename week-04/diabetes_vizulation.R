data <- read.csv("diabetes.csv")

# 1. Basic Statistics

head(data)

str(data)

summary(data)


# 2. Graphs

library(ggplot2)


# 2.1. Heatmap

corr <- cor(data, use = "complete.obs")
corr_df <- as.data.frame(as.table(corr))

ggplot(corr_df, aes(x = Var1, y = Var2, fill = Freq)) +
  geom_tile(color = "white", linewidth = 0.3) +
  geom_text(aes(label = round(Freq, 2)), size = 3) +
  scale_fill_gradient2(
    low = "#2166ac",
    mid = "white",
    high = "#b2182b",
    midpoint = 0,
    name = "Correlation"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    panel.grid = element_blank()
  ) +
  labs(
    title = "Correlation Heatmap of Numeric Variables",
    x = "",
    y = ""
  )

# 2.2. Scatter Plots of Most Correlated Variables

ggplot(data, aes(x = Age, y = Pregnancies)) +
  geom_point(color = "#2c7fb8", alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "#d95f0e") +
  theme_light() +
  labs(
    title = "Correlation Between Age and Pregnancies",
    x = "Age",
    y = "Pregnancies"
  )

ggplot(data, aes(x = Outcome, y = Glucose)) +
  geom_point(color = "#2c7fb8", alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "#d95f0e") +
  theme_light() +
  labs(
    title = "Correlation Between Outcome and Glucose",
    x = "Outcome",
    y = "Glucose"
  )


ggplot(data, aes(x = Insulin, y = SkinThickness)) +
  geom_point(color = "#2c7fb8", alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "#d95f0e") +
  theme_light() +
  labs(
    title = "Correlation Between Insulin and Skin Thickness",
    x = "Insulin",
    y = "Skin Thickness"
  )


ggplot(data, aes(x = BMI, y = SkinThickness)) +
  geom_point(color = "#2c7fb8", alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "#d95f0e") +
  theme_light() +
  labs(
    title = "Correlation Between BMI and Skin Thickness",
    x = "BMI",
    y = "Skin Thickness"
  )


# 2.3. Distribution of Variables

ggplot(data, aes(x = Age)) +
  geom_histogram(
    bins = 20,
    fill = "#2c7fb8",
    color = "white",
    alpha = 0.8
  ) +
  theme_light() +
  labs(
    title = "Distribution of Age",
    x = "Age",
    y = "Frequency"
  )


ggplot(data, aes(x = BloodPressure)) +
  geom_histogram(
    bins = 20,
    fill = "#2c7fb8",
    color = "white",
    alpha = 0.8
  ) +
  theme_light() +
  labs(
    title = "Distribution of Blood Pressure",
    x = "Blood Pressure",
    y = "Frequency"
  )


ggplot(data, aes(x = BMI)) +
  geom_histogram(
    bins = 20,
    fill = "#2c7fb8",
    color = "white",
    alpha = 0.8
  ) +
  theme_light() +
  labs(
    title = "Distribution of BMI",
    x = "BMI",
    y = "Frequency"
  )